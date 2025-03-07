SHELL:=/bin/bash
.DEFAULT_GOAL := help

OS := $(shell uname -s)

INTERACTIVE := $(shell [ -t 0 ] && echo 1)

root_mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
export REPO_ROOT_DIR := $(patsubst %/,%,$(dir $(root_mkfile_path)))
export REPO_REV ?= $(shell cd $(REPO_ROOT_DIR) && git describe --abbrev=12 --tags --match='v*' HEAD)

UID ?= $(shell id -u)
GID ?= $(shell id -g)
USER_NAME ?= $(shell id -u -n)
GROUP_NAME ?= $(shell id -g -n)

COVERAGE ?= $(REPO_ROOT_DIR)/coverage

VERBOSITY ?= 0

INVENTORY_FILE ?= $(REPO_ROOT_DIR)/inventory.yaml
COMMA:=,

export CGO_ENABLED=0
export GO_VERSION := $(shell cat go.mod | grep "go " -m 1 | cut -d " " -f 2)
GOLANG_IMAGE := golang:$(GO_VERSION)
ARCH := $(shell uname -m)

BUILDARCH ?= $(shell echo $(ARCH) | sed 's/x86_64/amd64/g')

export CI ?= no


export DOCKER_REPOSITORY ?= mesosphere/konvoy-image-builder
export DOCKER_SOCKET ?= /var/run/docker.sock
ifeq ($(OS),Darwin)
export DOCKER_SOCKET_GID ?= $(shell /usr/bin/stat -f "%g" $(DOCKER_SOCKET))
else
export DOCKER_SOCKET_GID ?= $(shell stat -c %g $(DOCKER_SOCKET))
endif

export DOCKER_IMG ?= $(DOCKER_REPOSITORY):$(REPO_REV)-$(BUILDARCH)
export DOCKER_PHONY_FILE ?= .docker-$(shell echo '$(DOCKER_IMG)' | tr '/:' '.')

export DOCKER_DEVKIT_IMG ?= $(DOCKER_REPOSITORY):latest-devkit-$(BUILDARCH)
export DOCKER_DEVKIT_PHONY_FILE ?= .docker-$(shell echo '$(DOCKER_DEVKIT_IMG)' | tr '/:' '.')
export DOCKER_DEVKIT_GO_ENV_ARGS ?= \
	--env GOCACHE=/kib/.cache/go-build \
	--env GOMODCACHE=/kib/.cache/go-mod \
	--env GOLANGCI_LINT_CACHE=/kib/.cache/golangci-lint \

export DOCKER_DEVKIT_ENV_ARGS ?= \
	--env CI \
	--env GITHUB_TOKEN \
	--env BUILD_DRY_RUN \
	$(DOCKER_DEVKIT_GO_ENV_ARGS)

export DOCKER_DEVKIT_AWS_ARGS ?= \
	--env AWS_PROFILE \
	--env AWS_SECRET_ACCESS_KEY \
	--env AWS_SESSION_TOKEN \
	--env AWS_DEFAULT_REGION \
	--volume "$(HOME)/.aws":"/home/$(USER_NAME)/.aws"

DOCKER_GCP_CREDENTIALS_ARGS=--volume "$(HOME)/.gcloud":"/home/$(USER_NAME)/.gcloud" \
	                             --env GOOGLE_APPLICATION_CREDENTIALS=/home/$(USER_NAME)/.gcloud/credentials.json

export DOCKER_DEVKIT_GCP_ARGS ?= \
	$(DOCKER_GCP_CREDENTIALS_ARGS)

export DOCKER_DEVKIT_AZURE_ARGS ?= \
	--env AZURE_LOCATION \
	--env AZURE_CLIENT_ID \
	--env AZURE_CLIENT_SECRET \
	--env AZURE_SUBSCRIPTION_ID \
	--env AZURE_TENANT_ID \
	--volume "$(HOME)/.azure":"/home/$(USER_NAME)/.azure"

export DOCKER_DEVKIT_VSPHERE_ARGS ?= \
	--env VSPHERE_SERVER \
	--env VSPHERE_USERNAME \
	--env VSPHERE_PASSWORD \
	--env RHSM_USER \
	--env RHSM_PASS

export DOCKER_DEVKIT_BASTION_ARGS ?= \
	--env SSH_BASTION_USERNAME \
	--env SSH_BASTION_HOST \
	--env SSH_BASTION_KEY_CONTENTS

ifneq ($(wildcard $(DOCKER_SOCKET)),)
	export DOCKER_SOCKET_ARGS ?= \
		--volume "$(DOCKER_SOCKET)":/var/run/docker.sock
endif

export DOCKER_DEVKIT_PUSH_ARGS ?= \
	--volume "$(HOME)/.docker":"/home/$(USER_NAME)/.docker" \
	--env DOCKER_PASS \
	--env DOCKER_CLI_EXPERIMENTAL

# ulimit arg is a workaround for golang's "suboptimal" bug workaround that
# manifests itself in alpine images, resulting in packer plugins simply dying.
#
# On LTS distros like Ubuntu, kernel bugs are backported, so the kernel version
# may seem old even though it is not vulnerable. Golang ignores it and just
# looks at the distro+kernel combination to determine if it should panic or
# not. This results in packer silently failing when running in devkit
# container, as it is using Alpine linux. See the issue below for more details:
# https://github.com/docker-library/golang/issues/320
export DOCKER_ULIMIT_ARGS ?= \
	--ulimit memlock=67108864:67108864

export DOCKER_DEVKIT_USER_ARGS ?= \
	--user $(UID):$(GID) \
	--group-add $(DOCKER_SOCKET_GID)

export DOCKER_DEVKIT_SSH_ARGS ?= \
	--env SSH_AUTH_SOCK=/run/ssh-agent.sock \
	--volume $(SSH_AUTH_SOCK):/run/ssh-agent.sock

export DOCKER_DEVKIT_ARGS ?= \
	$(DOCKER_ULIMIT_ARGS) \
	$(DOCKER_DEVKIT_USER_ARGS) \
	--volume $(REPO_ROOT_DIR):/kib \
	--workdir /kib \
	$(DOCKER_SOCKET_ARGS) \
	$(DOCKER_DEVKIT_AWS_ARGS) \
	$(DOCKER_DEVKIT_GCP_ARGS) \
	$(DOCKER_DEVKIT_AZURE_ARGS) \
	$(DOCKER_DEVKIT_BASTION_ARGS) \
	$(DOCKER_DEVKIT_VSPHERE_ARGS) \
	$(DOCKER_DEVKIT_PUSH_ARGS) \
	$(DOCKER_DEVKIT_ENV_ARGS) \
	$(DOCKER_DEVKIT_SSH_ARGS)

export DOCKER_DEVKIT_DEFAULT_ARGS ?= \
	--rm \
	$(if $(INTERACTIVE),--tty) \
	--interactive

ifneq ($(shell git status --porcelain 2>/dev/null; echo $$?), 0)
	export GIT_TREE_STATE := dirty
else
	export GIT_TREE_STATE :=
endif

# NOTE(jkoelker) Abuse ifeq and the junk variable to proxy docker image state
#                to the target file
ifneq ($(shell command -v docker),)
	ifeq ($(shell docker image ls --quiet "$(DOCKER_DEVKIT_IMG)"),)
		export junk := $(shell rm -rf $(DOCKER_DEVKIT_PHONY_FILE))
	endif
	ifeq ($(shell docker image ls --quiet "$(DOCKER_IMG)"),)
		export junk := $(shell rm -rf $(DOCKER_PHONY_FILE))
	endif
endif

# envsubst
# ---------------------------------------------------------------------
export ENVSUBST_VERSION ?= v1.2.0
export ENVSUBST_URL = https://github.com/a8m/envsubst/releases/download/$(ENVSUBST_VERSION)/envsubst-$(shell uname -s)-$(shell uname -m)
export ENVSUBST_ASSETS ?= $(CURDIR)/.local/envsubst/${ENVSUBST_VERSION}

.PHONY: install-envsubst
install-envsubst: ## install envsubst binary
install-envsubst: $(ENVSUBST_ASSETS)/envsubst

$(ENVSUBST_ASSETS)/envsubst:
	$(call print-target,install-envsubst)
	mkdir -p $(ENVSUBST_ASSETS)
	curl -Lf $(ENVSUBST_URL) -o $(ENVSUBST_ASSETS)/envsubst
	chmod +x $(ENVSUBST_ASSETS)/envsubst


include hack/pip-packages/Makefile
include test/infra/aws/Makefile
include test/infra/vsphere/Makefile

BUILD_FLAGS := \
		--build-arg USER_ID=$(UID) \
		--build-arg GROUP_ID=$(GID) \
		--build-arg USER_NAME=$(USER_NAME) \
		--build-arg GROUP_NAME=$(GROUP_NAME) \
		--build-arg DOCKER_GID=$(DOCKER_SOCKET_GID) \
		--build-arg BUILDARCH=$(BUILDARCH) \
		--platform linux/$(BUILDARCH) \
		--file $(REPO_ROOT_DIR)/Dockerfile.devkit \

SECRET_FLAG := --secret id=githubtoken,src=github-token.txt

ifneq ($(strip $(GITHUB_ACTION)),)
	BUILD_FLAGS := $(BUILD_FLAGS) $(SECRET_FLAG)
endif

github-token.txt:
	echo $(GITHUB_TOKEN) >> github-token.txt

.PHONY: buildx
buildx:
buildx:
	 docker buildx create --use --name=konvoy-image-builder || true
	 docker run --privileged --rm tonistiigi/binfmt --install all || true


$(DOCKER_DEVKIT_PHONY_FILE): github-token.txt buildx
$(DOCKER_DEVKIT_PHONY_FILE): Dockerfile.devkit install-envsubst
		docker buildx build \
		$(BUILD_FLAGS) \
		--output="type=docker,push=false,name=docker.io/$(DOCKER_DEVKIT_IMG),dest=/tmp/img.tar" \
		$(REPO_ROOT_DIR) \
	&& docker load --input /tmp/img.tar && rm /tmp/img.tar && touch $(DOCKER_DEVKIT_PHONY_FILE) && docker images

$(DOCKER_PHONY_FILE): buildx
$(DOCKER_PHONY_FILE): $(DOCKER_DEVKIT_PHONY_FILE)
$(DOCKER_PHONY_FILE): konvoy-image-linux
$(DOCKER_PHONY_FILE): Dockerfile
	DOCKER_BUILDKIT=1 docker build \
		--file $(REPO_ROOT_DIR)/Dockerfile \
		--build-arg BUILDARCH=$(BUILDARCH) \
		--platform linux/$(BUILDARCH) \
		--tag=$(DOCKER_IMG) \
		$(REPO_ROOT_DIR) \
	&& touch $(DOCKER_PHONY_FILE)

.PHONY: devkit
devkit: $(DOCKER_DEVKIT_PHONY_FILE)

# we need to push these devkit images up when we do releases because local dockers 
# are unable to do buildx builds the refer to another platform as the base
# these targets should only be used for release purposes `make devkit` creates 
# the appropriate devkit image for your system
.PHONY: devkit-arm64
devkit-arm64:
devkit-arm64: buildx github-token.txt
		docker buildx build \
		-t docker.io/$(DOCKER_REPOSITORY):$(REPO_REV)-devkit-arm64 \
		--build-arg USER_ID=$(UID) \
		--build-arg GROUP_ID=$(GID) \
		--build-arg USER_NAME=$(USER_NAME) \
		--build-arg GROUP_NAME=$(GROUP_NAME) \
		--build-arg DOCKER_GID=$(DOCKER_SOCKET_GID) \
		--build-arg BUILDARCH=arm64 \
		--platform linux/arm64 \
		--file $(REPO_ROOT_DIR)/Dockerfile.devkit \
		--secret id=githubtoken,src=github-token.txt \
		--provenance=false  \
		--push \
		$(REPO_ROOT_DIR)

.PHONY: devkit-amd64
devkit-amd64:
devkit-amd64: buildx github-token.txt
		docker buildx build \
		-t docker.io/$(DOCKER_REPOSITORY):$(REPO_REV)-devkit-amd64 \
		--build-arg USER_ID=$(UID) \
		--build-arg GROUP_ID=$(GID) \
		--build-arg USER_NAME=$(USER_NAME) \
		--build-arg GROUP_NAME=$(GROUP_NAME) \
		--build-arg DOCKER_GID=$(DOCKER_SOCKET_GID) \
		--build-arg BUILDARCH=amd64 \
		--platform linux/amd64 \
		--file $(REPO_ROOT_DIR)/Dockerfile.devkit \
		--secret id=githubtoken,src=github-token.txt \
		--provenance=false  \
		--push \
		$(REPO_ROOT_DIR)

.PHONY: docker-build-amd64
docker-build-amd64: BUILDARCH=amd64
docker-build-amd64: devkit-amd64 konvoy-image-amd64
	docker buildx build \
		--file $(REPO_ROOT_DIR)/Dockerfile \
		--build-arg BUILDARCH=amd64 \
		--platform linux/amd64 \
		--build-arg BASE=docker.io/$(DOCKER_REPOSITORY):$(REPO_REV)-devkit-amd64 \
		--tag=$(DOCKER_REPOSITORY):$(REPO_REV)-amd64 \
		--pull \
		--provenance=false \
		--push \
		$(REPO_ROOT_DIR)

.PHONY: docker-build-arm64
docker-build-arm64: BUILDARCH=arm64
docker-build-arm64: devkit-arm64 konvoy-image-arm64
	docker buildx build \
		--file $(REPO_ROOT_DIR)/Dockerfile \
		--build-arg BUILDARCH=arm64 \
		--platform linux/arm64 \
		--build-arg BASE=docker.io/$(DOCKER_REPOSITORY):$(REPO_REV)-devkit-arm64 \
		--tag=$(DOCKER_REPOSITORY):$(REPO_REV)-arm64 \
		--pull \
		--push \
		--provenance=false  \
		$(REPO_ROOT_DIR)


WHAT ?= bash

.PHONY: devkit.run
devkit.run: ## run $(WHAT) in devkit
devkit.run: devkit
	docker run \
		$(DOCKER_DEVKIT_DEFAULT_ARGS) \
		$(DOCKER_DEVKIT_ARGS) \
		"$(DOCKER_DEVKIT_IMG)" \
		$(WHAT)

.PHONY: provision
provision: build
provision:
	./bin/konvoy-image provision --inventory-file $(INVENTORY_FILE)  \
	-v ${VERBOSITY} \
	$(if $(ADDITIONAL_OVERRIDES),--overrides=${ADDITIONAL_OVERRIDES}) \
	$(if $(EXTRA_OVERRIDE_VARS), --extra-vars=${EXTRA_OVERRIDE_VARS})

.PHONY: dev
dev: ## dev build
dev: clean generate build lint test mod-tidy build.snapshot

.PHONY: ci
ci: ## CI build
ci: dev diff

.PHONY: clean
clean: ## remove files created during build
	$(call print-target)
	rm -rf bin
	rm -rf dist
	rm -rf artifacts
	rm -rf "$(REPO_ROOT_DIR)/cmd/konvoy-image-wrapper/image/konvoy-image-builder.tar.gz"
	rm -f flatcar-version.yaml
	rm -f $(COVERAGE)*
	docker image rm $(DOCKER_DEVKIT_IMG) || echo "image already removed"
	docker buildx rm konvoy-image-builder || echo "image already removed"

.PHONY: generate
generate: ## go generate
	$(call print-target)
	go generate ./...

.PHONEY: docker
docker:
	docker run \
	--rm \
	$(DOCKER_ULIMIT_ARGS) \
	--volume $(REPO_ROOT_DIR):/build \
	--workdir /build \
	--env GOOS \
	--env BUILDARCH \
	$(GOLANG_IMAGE) \
	/bin/bash -c "$(WHAT)"


bin/konvoy-image: $(REPO_ROOT_DIR)/cmd
bin/konvoy-image: $(shell find $(REPO_ROOT_DIR)/cmd -type f -name '*'.go)
bin/konvoy-image: $(REPO_ROOT_DIR)/pkg
bin/konvoy-image: $(shell find $(REPO_ROOT_DIR)/pkg -type f -name '*'.go)
bin/konvoy-image: $(shell find $(REPO_ROOT_DIR)/pkg -type f -name '*'.hcl)
bin/konvoy-image:
	$(call print-target)
	GOARCH=$(BUILDARCH) GOOS=$(GOOS) go build \
		-ldflags='-X github.com/mesosphere/konvoy-image-builder/pkg/version.version=$(REPO_REV)' \
		-o ./dist/konvoy-image_linux_$(GOARCH)/konvoy-image ./cmd/konvoy-image/main.go
	mkdir -p bin
	ln -sf ../dist/konvoy-image_linux_$(GOARCH)/konvoy-image bin/konvoy-image

bin/konvoy-image-amd64: $(REPO_ROOT_DIR)/cmd
bin/konvoy-image-amd64: $(shell find $(REPO_ROOT_DIR)/cmd -type f -name '*'.go)
bin/konvoy-image-amd64: $(REPO_ROOT_DIR)/pkg
bin/konvoy-image-amd64: $(shell find $(REPO_ROOT_DIR)/pkg -type f -name '*'.go)
bin/konvoy-image-amd64: $(shell find $(REPO_ROOT_DIR)/pkg -type f -name '*'.hcl)
bin/konvoy-image-amd64:
	$(call print-target)
	GOARCH=amd64 GOOS=$(GOOS) go build \
		-ldflags='-X github.com/mesosphere/konvoy-image-builder/pkg/version.version=$(REPO_REV)' \
		-o ./dist/konvoy-image_linux_amd64/konvoy-image ./cmd/konvoy-image/main.go
	mkdir -p bin
	ln -sf ../dist/konvoy-image_linux_amd64/konvoy-image bin/konvoy-image-amd64

bin/konvoy-image-arm64: $(REPO_ROOT_DIR)/cmd
bin/konvoy-image-arm64: $(shell find $(REPO_ROOT_DIR)/cmd -type f -name '*'.go)
bin/konvoy-image-arm64: $(REPO_ROOT_DIR)/pkg
bin/konvoy-image-arm64: $(shell find $(REPO_ROOT_DIR)/pkg -type f -name '*'.go)
bin/konvoy-image-arm64: $(shell find $(REPO_ROOT_DIR)/pkg -type f -name '*'.hcl)
bin/konvoy-image-arm64:
	$(call print-target)
	GOARCH=arm64 GOOS=$(GOOS) go build \
		-ldflags='-X github.com/mesosphere/konvoy-image-builder/pkg/version.version=$(REPO_REV)' \
		-o ./dist/konvoy-image_linux_arm64/konvoy-image ./cmd/konvoy-image/main.go
	mkdir -p bin
	ln -sf ../dist/konvoy-image_linux_arm64/konvoy-image bin/konvoy-image-arm64

konvoy-image-linux:
	$(MAKE) devkit.run GOOS=linux GOARCH=$(BUILDARCH) WHAT="make bin/konvoy-image"
	$(MAKE) devkit.run GOOS=linux GOARCH=$(BUILDARCH) WHAT="make bin/konvoy-image-$(BUILDARCH)"

konvoy-image-amd64:
	$(MAKE) devkit.run GOOS=linux GOARCH=amd64 WHAT="make bin/konvoy-image-amd64"

konvoy-image-arm64:
	$(MAKE) devkit.run GOOS=linux GOARCH=arm64 WHAT="make bin/konvoy-image-arm64"

bin/konvoy-image-wrapper: $(DOCKER_PHONY_FILE)
bin/konvoy-image-wrapper:
	$(call print-target)
	$(MAKE) docker WHAT="go build \
		-ldflags='-X github.com/mesosphere/konvoy-image-builder/pkg/version.version=$(REPO_REV)' \
		-o ./bin/konvoy-image-wrapper ./cmd/konvoy-image-wrapper/main.go"
	docker tag $(DOCKER_REPOSITORY):$(REPO_REV)-$(BUILDARCH) $(DOCKER_REPOSITORY):$(REPO_REV)

dist/konvoy-image_linux_$(BUILDARCH)/konvoy-image: $(REPO_ROOT_DIR)/cmd
dist/konvoy-image_linux_$(BUILDARCH)/konvoy-image: $(shell find $(REPO_ROOT_DIR)/cmd -type f -name '*'.go)
dist/konvoy-image_linux_$(BUILDARCH)/konvoy-image: $(REPO_ROOT_DIR)/pkg
dist/konvoy-image_linux_$(BUILDARCH)/konvoy-image: $(shell find $(REPO_ROOT_DIR)/pkg -type f -name '*'.go)
dist/konvoy-image_linux_$(BUILDARCH)/konvoy-image: $(shell find $(REPO_ROOT_DIR)/pkg -type f -name '*'.hcl)
dist/konvoy-image_linux_$(BUILDARCH)/konvoy-image:
	$(call print-target)
	goreleaser build --snapshot --clean --id konvoy-image --single-target

.PHONY: build
build: bin/konvoy-image
build: ## go build

.PHONY: build-wrapper
build-wrapper: bin/konvoy-image-wrapper

.PHONY: docs
docs: build
	$(REPO_ROOT_DIR)/bin/konvoy-image generate-docs $(REPO_ROOT_DIR)/docs/cli

.PHONY: docs.check
docs.check: docs
docs.check:
	@test -z "$(shell git status --porcelain -- $(REPO_ROOT_DIR)/docs)" \
		|| (echo ''; \
			echo 'Need docs update:'; \
			echo ''; \
			git status --porcelain -- "$(REPO_ROOT_DIR)/docs"; \
			echo ''; \
			echo 'Run `make docs` and commit the results'; \
			exit 1)

.PHONY: lint
lint: ## golangci-lint
	$(call print-target)
	golangci-lint run -c .golangci.yml --fix

# Add a convience alias
.PHONY: super-linter
super-linter: super-lint

.PHONY: super-lint
include $(REPO_ROOT_DIR)/.github/super-linter.env
export
export DOCKER_SUPER_LINTER_ARGS ?= \
	--env RUN_LOCAL=true \
	--env-file $(REPO_ROOT_DIR)/.github/super-linter.env \
	--volume $(REPO_ROOT_DIR):/tmp/lint
export DOCKER_SUPER_LINTER_VERSION ?= $(shell \
	grep 'uses: github/super-linter' $(REPO_ROOT_DIR)/.github/workflows/lint.yml | cut -d@ -f2 \
)
export DOCKER_SUPER_LINTER_IMG := github/super-linter:$(DOCKER_SUPER_LINTER_VERSION)

super-lint: ## run all linting with super-linter
	$(call print-target)
	docker run \
		--rm \
		$(if $(INTERACTIVE),--tty) \
		--interactive \
		$(DOCKER_SUPER_LINTER_ARGS) \
		$(DOCKER_SUPER_LINTER_IMG)

.PHONY: super-lint-shell
super-lint-shell: ## open a shell in the super-linter container
	$(call print-target)
	docker run \
		--rm \
		$(if $(INTERACTIVE),--tty) \
		--interactive \
		$(DOCKER_SUPER_LINTER_ARGS) \
		--workdir=/tmp/lint \
		--entrypoint="/bin/bash" \
		$(DOCKER_SUPER_LINTER_IMG) -l

.PHONY: test
test: ## go test with race detector and code coverage
	$(call print-target)
	CGO_ENABLED=1 go test $(shell go list ./... | grep -v e2e) -- -race -short -v  

.PHONY: integration-test
integration-test: ## go test with race detector for integration tests
	$(call print-target)
	CGO_ENABLED=1 go test -race -run Integration -v ./...

.PHONY: mod-tidy
mod-tidy: ## go mod tidy
	$(call print-target)
	go mod tidy

.PHONY: build.snapshot
build.snapshot: dist/konvoy-image_linux_amd64/konvoy-image
build.snapshot:
	$(call print-target)
	# NOTE(jkoelker) shenanigans to get around goreleaser and
	#                `make release-bundle` being able to share the same
	#                `Dockerfile`. Unfortunatly goreleaser forbids
	#                copying the dist folder into the temporary folder
	#                that it uses as its docker build context ;(.
	# NOTE (faiq): does anyone use this target?
	mkdir -p bin
	cp dist/konvoy-image_linux_$(BUILDARCH)/konvoy-image bin/konvoy-image
	goreleaser --parallelism=1 --skip-publish --snapshot --clean

.PHONY: diff
diff: ## git diff
	$(call print-target)
	git diff --exit-code
	RES=$$(git status --porcelain) ; if [ -n "$$RES" ]; then echo $$RES && exit 1 ; fi

.PHONY: push-manifest
push-manifest:
	docker manifest create \
		$(DOCKER_REPOSITORY):$(REPO_REV) \
		--amend $(DOCKER_REPOSITORY):$(REPO_REV)-arm64 \
		--amend $(DOCKER_REPOSITORY):$(REPO_REV)-amd64
	docker manifest push $(DOCKER_REPOSITORY):$(REPO_REV)

.PHONY: release
release: 
release: 
	# we need to redefine DOCKER_DEVKIT_IMG because its only evaluated once in the makefile
	$(call print-target)
	./hack/release.sh --push

.PHONY: release-snapshot
release-snapshot:
release-snapshot:
	$(call print-target)
	./hack/release.sh

.PHONY: go-clean
go-clean: ## go clean build, test and modules caches
	$(call print-target)
	go clean -r -i -cache -testcache -modcache

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

define print-target
    @printf "Executing target: \033[36m$@\033[0m\n"
endef

release-bundle-GOOS:
	GOOS=$(GOOS) go build -tags EMBED_DOCKER_IMAGE \
		-ldflags="-X github.com/mesosphere/konvoy-image-builder/pkg/version.version=$(REPO_REV)" \
		-o "$(REPO_ROOT_DIR)/dist/bundle/konvoy-image-bundle-$(REPO_REV)_$(GOOS)/konvoy-image" $(REPO_ROOT_DIR)/cmd/konvoy-image-wrapper/main.go
	cp -a "$(REPO_ROOT_DIR)/ansible" "$(REPO_ROOT_DIR)/dist/bundle/konvoy-image-bundle-$(REPO_REV)_$(GOOS)/"
	cp -a "$(REPO_ROOT_DIR)/goss" "$(REPO_ROOT_DIR)/dist/bundle/konvoy-image-bundle-$(REPO_REV)_$(GOOS)/"
	cp -a "$(REPO_ROOT_DIR)/images" "$(REPO_ROOT_DIR)/dist/bundle/konvoy-image-bundle-$(REPO_REV)_$(GOOS)/"
	cp -a "$(REPO_ROOT_DIR)/overrides" "$(REPO_ROOT_DIR)/dist/bundle/konvoy-image-bundle-$(REPO_REV)_$(GOOS)/"
	cp -a "$(REPO_ROOT_DIR)/packer" "$(REPO_ROOT_DIR)/dist/bundle/konvoy-image-bundle-$(REPO_REV)_$(GOOS)/"
	tar -C "$(REPO_ROOT_DIR)/dist/bundle" -czf "$(REPO_ROOT_DIR)/dist/bundle/konvoy-image-bundle-$(REPO_REV)_$(GOOS).tar.gz" "konvoy-image-bundle-$(REPO_REV)_$(GOOS)"

cmd/konvoy-image-wrapper/image/konvoy-image-builder.tar.gz: docker-build-$(BUILDARCH)
	# we need to build the appropriate image for the bundle we're creating
	# followed by saving it as just image name so that we can put in the release tar
	# the docker images are published before this by hack/release.sh, making this safe.
	docker pull $(DOCKER_REPOSITORY):$(REPO_REV)-$(BUILDARCH)
	docker tag $(DOCKER_REPOSITORY):$(REPO_REV)-$(BUILDARCH) $(DOCKER_REPOSITORY):$(REPO_REV)
	docker save $(DOCKER_REPOSITORY):$(REPO_REV) | gzip -c - > "$(REPO_ROOT_DIR)/cmd/konvoy-image-wrapper/image/konvoy-image-builder.tar.gz"

release-bundle: cmd/konvoy-image-wrapper/image/konvoy-image-builder.tar.gz
release-bundle:
	$(MAKE) GOOS=linux release-bundle-GOOS
	$(MAKE) GOOS=darwin release-bundle-GOOS
