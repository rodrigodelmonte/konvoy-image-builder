# Changelog

## [2.2.4](https://github.com/mesosphere/konvoy-image-builder/compare/v2.2.3...v2.2.4) (2023-03-09)


### Bug Fixes

* allow building aws images using source_ami  ([#723](https://github.com/mesosphere/konvoy-image-builder/issues/723)) ([4e63f53](https://github.com/mesosphere/konvoy-image-builder/commit/4e63f532ddcb834c5ff83d18a032a99fbfe29d1b))

## [2.2.3](https://github.com/mesosphere/konvoy-image-builder/compare/v2.2.2...v2.2.3) (2023-03-03)


### Bug Fixes

* set correct compute_gallery_image_id ([#718](https://github.com/mesosphere/konvoy-image-builder/issues/718)) ([a369543](https://github.com/mesosphere/konvoy-image-builder/commit/a369543370c385f1ce027dafe80d34d6cb65e21f))

## [2.2.2](https://github.com/mesosphere/konvoy-image-builder/compare/v2.2.1...v2.2.2) (2023-03-03)


### Bug Fixes

* pass datacenter ([#710](https://github.com/mesosphere/konvoy-image-builder/issues/710)) ([eb54427](https://github.com/mesosphere/konvoy-image-builder/commit/eb544275526eb5f739f129e597dfaca0be8fb894))
* set limitnofile ([#713](https://github.com/mesosphere/konvoy-image-builder/issues/713)) ([6477937](https://github.com/mesosphere/konvoy-image-builder/commit/64779374c0c993e92d65ef97898176053fbd405e))

## [2.2.1](https://github.com/mesosphere/konvoy-image-builder/compare/v2.2.0...v2.2.1) (2023-03-01)


### Bug Fixes

* fallback to ansible_user_id when using root user ([#701](https://github.com/mesosphere/konvoy-image-builder/issues/701)) ([6ae7883](https://github.com/mesosphere/konvoy-image-builder/commit/6ae7883031c7caca58db47974571001d056594fc))
* skip subscribing ([#704](https://github.com/mesosphere/konvoy-image-builder/issues/704)) ([2520a2c](https://github.com/mesosphere/konvoy-image-builder/commit/2520a2c59cf9cc5f9c1cbe76e87d0d2a24bc4a35))

## [2.2.0](https://github.com/mesosphere/konvoy-image-builder/compare/v2.1.0...v2.2.0) (2023-02-27)


### Features

* Install only required ansible collections  ([#684](https://github.com/mesosphere/konvoy-image-builder/issues/684)) ([2127691](https://github.com/mesosphere/konvoy-image-builder/commit/2127691d3db07eaa25be7219e89fa2d2e5f12913))


### Bug Fixes

* set force = true and update k8s http source ([#692](https://github.com/mesosphere/konvoy-image-builder/issues/692)) ([98bad43](https://github.com/mesosphere/konvoy-image-builder/commit/98bad437cc5e73ef4b145a3a7e9c50fc434a3cba))
* Use always section instead of rescue to remove RHEL subscription ([#690](https://github.com/mesosphere/konvoy-image-builder/issues/690)) ([3729abe](https://github.com/mesosphere/konvoy-image-builder/commit/3729abe32c4eb07ba27ba6b29d87cc637d2128db))

## [2.1.0](https://github.com/mesosphere/konvoy-image-builder/compare/v2.0.0...v2.1.0) (2023-02-15)


### Features

* update Containerd to 1.6.17 ([#678](https://github.com/mesosphere/konvoy-image-builder/issues/678)) ([c02ecff](https://github.com/mesosphere/konvoy-image-builder/commit/c02ecff5e944401d7b80293803990332d0490941))


### Bug Fixes

* epel repos not working with some RHEL images ([#676](https://github.com/mesosphere/konvoy-image-builder/issues/676)) ([aae136a](https://github.com/mesosphere/konvoy-image-builder/commit/aae136ace042646242d40207a6f09b2f57ee26f5))
* netwmanager config for OracleLinux 7 ([#682](https://github.com/mesosphere/konvoy-image-builder/issues/682)) ([c765083](https://github.com/mesosphere/konvoy-image-builder/commit/c76508303c7bbc90b92bfd40049f62beb00ca941))
* set default OVA disk size to 80GB ([#683](https://github.com/mesosphere/konvoy-image-builder/issues/683)) ([b1c3bc8](https://github.com/mesosphere/konvoy-image-builder/commit/b1c3bc874c9e59f8455771e6d8a4854ba713eaf2))
* use subscription manager to get kernel headers ([#675](https://github.com/mesosphere/konvoy-image-builder/issues/675)) ([ce0b0c8](https://github.com/mesosphere/konvoy-image-builder/commit/ce0b0c8982bafd0fd837b53ed83d28e4bd329190))

## [2.0.0](https://github.com/mesosphere/konvoy-image-builder/compare/v2.0.0...v2.0.0) (2023-02-08)


### Features

* Add "dry run" build mode ([#228](https://github.com/mesosphere/konvoy-image-builder/issues/228)) ([e56fdea](https://github.com/mesosphere/konvoy-image-builder/commit/e56fdea37b217cb4c218ddd366fbe6bb6a203879))
* add cloudendpoint to azure flags ([#470](https://github.com/mesosphere/konvoy-image-builder/issues/470)) ([12e519c](https://github.com/mesosphere/konvoy-image-builder/commit/12e519c054ac47de44efdbf5f8d73a87a056d021))
* add images file for ubuntu 20.04 ([#656](https://github.com/mesosphere/konvoy-image-builder/issues/656)) ([d2c739f](https://github.com/mesosphere/konvoy-image-builder/commit/d2c739f43d44001402794fcc7be1732e49806c40))
* add RHEl 8.6 base template ([#530](https://github.com/mesosphere/konvoy-image-builder/issues/530)) ([f20fa83](https://github.com/mesosphere/konvoy-image-builder/commit/f20fa83707906b9492050034aad70edcf052f6d2))
* add support for creating Ubuntu 20.04 base OVA template ([8a6608c](https://github.com/mesosphere/konvoy-image-builder/commit/8a6608c602f4e10816f10930d721d65542f2882f))
* Add toml-merge image for containerd supplementary images ([#518](https://github.com/mesosphere/konvoy-image-builder/issues/518)) ([827fe40](https://github.com/mesosphere/konvoy-image-builder/commit/827fe4023fdade7816111edeb451f6bee65a952b))
* adding make targets needed for offline nvidia rhel8.6 ([#544](https://github.com/mesosphere/konvoy-image-builder/issues/544)) ([7f9516c](https://github.com/mesosphere/konvoy-image-builder/commit/7f9516ca7ec23598200a520286feca37f04f09eb))
* adds an upload artifacts command to konvoy image builder ([#214](https://github.com/mesosphere/konvoy-image-builder/issues/214)) ([9ed1806](https://github.com/mesosphere/konvoy-image-builder/commit/9ed18066608bf2570ce4ed76b5559d82ade78e93))
* allow submaps in images files  ([#630](https://github.com/mesosphere/konvoy-image-builder/issues/630)) ([09bbe5e](https://github.com/mesosphere/konvoy-image-builder/commit/09bbe5ed7c69bf31b4555958eb19bbad88f8bef6))
* allow ubuntu image creation on gcp ([#374](https://github.com/mesosphere/konvoy-image-builder/issues/374)) ([edf8fd4](https://github.com/mesosphere/konvoy-image-builder/commit/edf8fd41cf485f8346c031d8d1c0ec8001723027))
* allow user to run ssh communicator through bastion ([#251](https://github.com/mesosphere/konvoy-image-builder/issues/251)) ([84e9674](https://github.com/mesosphere/konvoy-image-builder/commit/84e967431ac9b1dc8b7563536006c8b15e574562))
* **ansible:** `list-images` use role dependencies ([e334541](https://github.com/mesosphere/konvoy-image-builder/commit/e334541b05dce2fc44b8b4d467702128008d710c))
* **ansible:** split `containerd` role from `packages` ([edd3d35](https://github.com/mesosphere/konvoy-image-builder/commit/edd3d353d989f31253260cfadec8c5e0503dff28))
* **ansible:** split `kubeadm` role from `packages` ([772be9b](https://github.com/mesosphere/konvoy-image-builder/commit/772be9bb76eba471af32e63fd49c1a52ca02837f))
* **ansible:** split `repo` role from `packages` ([c7e961c](https://github.com/mesosphere/konvoy-image-builder/commit/c7e961c764b6de0fda888695d2c5bd9b84c3ec2c))
* authenticate to vsphere base template using ssh private key and ssh auth agent. ([#498](https://github.com/mesosphere/konvoy-image-builder/issues/498)) ([aa4b7a5](https://github.com/mesosphere/konvoy-image-builder/commit/aa4b7a5f9a0b4f5bcb2198d74dc2337c19142c51))
* **azure:** add azure `--instance-type` ([f5e1940](https://github.com/mesosphere/konvoy-image-builder/commit/f5e1940cfd776c5cab3c660af1c28ac17af681b3))
* **azure:** support flatcar images ([6773d1c](https://github.com/mesosphere/konvoy-image-builder/commit/6773d1cf609eb6f3a6e20ef538d38b67665128b7))
* **azure:** support oracle images ([c11780a](https://github.com/mesosphere/konvoy-image-builder/commit/c11780a1d9fa48089bbb8f35b483a1a9202f2612))
* **azure:** support rhel images ([cdef472](https://github.com/mesosphere/konvoy-image-builder/commit/cdef4724278ce6e7860ca431d699c07cd9d565da))
* **azure:** support sles images ([49a7745](https://github.com/mesosphere/konvoy-image-builder/commit/49a774523ebaab6b7a26a229330f9dea5173b7b3))
* **azure:** support ubuntu images ([91dac7f](https://github.com/mesosphere/konvoy-image-builder/commit/91dac7ffc7edf6251898c96143b11a2406b34f3d))
* build AMI and OVA for RHEL 8.6 networked, nvidia and airgapped flavors ([#531](https://github.com/mesosphere/konvoy-image-builder/issues/531)) ([249c1b4](https://github.com/mesosphere/konvoy-image-builder/commit/249c1b4f62fcf49ae78eae03ec2fa032734e45f6))
* build rocky linux 9.1 images ([#637](https://github.com/mesosphere/konvoy-image-builder/issues/637)) ([579e620](https://github.com/mesosphere/konvoy-image-builder/commit/579e620a94f2017cff84f496e0141734edd6f038))
* build vsphere template for rockylinux 9.1 ([#649](https://github.com/mesosphere/konvoy-image-builder/issues/649)) ([5908ed3](https://github.com/mesosphere/konvoy-image-builder/commit/5908ed34836a47d8c26e1a35a7a7bb8a38b97f13))
* bulild vsphere template in air gapped environment ([#246](https://github.com/mesosphere/konvoy-image-builder/issues/246)) ([5a2c62f](https://github.com/mesosphere/konvoy-image-builder/commit/5a2c62f95a0293a20dda1ebfd78f7c5fcbb4915e))
* bump Ansible to 4.10.0 ([#426](https://github.com/mesosphere/konvoy-image-builder/issues/426)) ([c04581e](https://github.com/mesosphere/konvoy-image-builder/commit/c04581ee9c7a2750aa9f72e8baebdd29596471c6))
* bump k8s to 1.22.4 ([d36a81d](https://github.com/mesosphere/konvoy-image-builder/commit/d36a81dd2646e72e247ecca1aedf336bd449cb95))
* bump kubernetes to 1.22.8 and use the new automated repos ([809bbd9](https://github.com/mesosphere/konvoy-image-builder/commit/809bbd9baf29df21e44512444da3795a8195cca6))
* bump kubernetes version to 1.24.4 ([#468](https://github.com/mesosphere/konvoy-image-builder/issues/468)) ([0904949](https://github.com/mesosphere/konvoy-image-builder/commit/0904949684377ef776adc01bfc94e5f2130a4c2f))
* bump versions of k8s to 1.23.7 ([350a016](https://github.com/mesosphere/konvoy-image-builder/commit/350a0167f1ddcaf484f537b6442e608ab9461d73))
* configure fips for rhel 8 ([#508](https://github.com/mesosphere/konvoy-image-builder/issues/508)) ([5269ff5](https://github.com/mesosphere/konvoy-image-builder/commit/5269ff56f56feb156d1ac0cee80953cea51a4db8))
* convert centos 7 minimal iso to docker image ([#195](https://github.com/mesosphere/konvoy-image-builder/issues/195)) ([b8ecfc5](https://github.com/mesosphere/konvoy-image-builder/commit/b8ecfc57bf0444471e8882ebf27e8e6df6f981bb))
* create centos images for gcp  ([#350](https://github.com/mesosphere/konvoy-image-builder/issues/350)) ([1229047](https://github.com/mesosphere/konvoy-image-builder/commit/12290478cdfca66ec03d39e7284c0735645f4aa8))
* create RHEL 8.2 and RHEL 8.4 fips image for air-gapped installations ([#208](https://github.com/mesosphere/konvoy-image-builder/issues/208)) ([51af272](https://github.com/mesosphere/konvoy-image-builder/commit/51af272d1c039c564551dbe7f70218629a426edf))
* create vsphere template image for RedHat 8.4 and 7.9 ([#239](https://github.com/mesosphere/konvoy-image-builder/issues/239)) ([b5e7abe](https://github.com/mesosphere/konvoy-image-builder/commit/b5e7abe50acf824e7244a8fb63440164b8ec03ac))
* disable password ssh auth ([#474](https://github.com/mesosphere/konvoy-image-builder/issues/474)) ([ba1e55b](https://github.com/mesosphere/konvoy-image-builder/commit/ba1e55b71bc5ba389ff9bc1675ee168c19b73858))
* Download containerd from packages.d2iq.com ([1388af9](https://github.com/mesosphere/konvoy-image-builder/commit/1388af9f47e1e09b8ce1360dc39d61907ba2f273))
* dynamic containerd install per OS ([#355](https://github.com/mesosphere/konvoy-image-builder/issues/355)) ([fad6da0](https://github.com/mesosphere/konvoy-image-builder/commit/fad6da0af6f19d0c61558b44ca1e877109462436))
* gather images dynamically ([3fe415f](https://github.com/mesosphere/konvoy-image-builder/commit/3fe415f0b6fa176c4b9baa0f363303b867f08ff3))
* **gpu:** add image tags ([0013788](https://github.com/mesosphere/konvoy-image-builder/commit/001378809917a73b795e6c83f7bef789201f1811))
* HCL instead of JSON packer templates  ([#507](https://github.com/mesosphere/konvoy-image-builder/issues/507)) ([0523fd2](https://github.com/mesosphere/konvoy-image-builder/commit/0523fd2c5e6e1ad1d4962f60a47039aa145a6e42))
* import container images with mindthegap ([#476](https://github.com/mesosphere/konvoy-image-builder/issues/476)) ([657f102](https://github.com/mesosphere/konvoy-image-builder/commit/657f102fee4ddad98990a294676e118b20db8673))
* install Containerd from a tar instead of OS packages ([9aff35f](https://github.com/mesosphere/konvoy-image-builder/commit/9aff35fa502c46b0f55b7a1186240f13a79aa524))
* install googlecompute packer plugin ([#373](https://github.com/mesosphere/konvoy-image-builder/issues/373)) ([fc626af](https://github.com/mesosphere/konvoy-image-builder/commit/fc626af3a45fc95745a2d0ac44271aef45e712e6))
* install nvidia driver using runfile ([#482](https://github.com/mesosphere/konvoy-image-builder/issues/482)) ([22f89b8](https://github.com/mesosphere/konvoy-image-builder/commit/22f89b8c95d176455a1e69352f4716867204293f))
* Install specific cri-tools package on debian derivatives ([68200b1](https://github.com/mesosphere/konvoy-image-builder/commit/68200b1da283fc30e23ed24c6fdd1349dc06c348))
* move disabling swap and firewalld to a shared play ([#451](https://github.com/mesosphere/konvoy-image-builder/issues/451)) ([bc5b71b](https://github.com/mesosphere/konvoy-image-builder/commit/bc5b71becc96143693276e154b4c3e4291b5f768))
* **oracle:** support installing RHCK kernel  ([#327](https://github.com/mesosphere/konvoy-image-builder/issues/327)) ([126b7aa](https://github.com/mesosphere/konvoy-image-builder/commit/126b7aad53924ae53b5846341a689436f485fd6f))
* rhel82 FIPS ([#200](https://github.com/mesosphere/konvoy-image-builder/issues/200)) ([1688a02](https://github.com/mesosphere/konvoy-image-builder/commit/1688a028fc8a350eb04c3bd1355f40c06b90a2f4))
* set a GCP image-family that can be used in dkp ([e2d3ad3](https://github.com/mesosphere/konvoy-image-builder/commit/e2d3ad31835e979da6181e68e003fd5913b7bec8))
* support azure ([#230](https://github.com/mesosphere/konvoy-image-builder/issues/230)) ([016481a](https://github.com/mesosphere/konvoy-image-builder/commit/016481af838a878dcbfa7e7f94c5be958e35364d))
* support building Ubuntu 20.04 with offline OS packages bundle ([#627](https://github.com/mesosphere/konvoy-image-builder/issues/627)) ([0e48add](https://github.com/mesosphere/konvoy-image-builder/commit/0e48add381fa8dff6466c1befd47101d7b2b23a4))
* update to Kubernetes v1.24.6 ([#529](https://github.com/mesosphere/konvoy-image-builder/issues/529)) ([248821c](https://github.com/mesosphere/konvoy-image-builder/commit/248821cd3bf48b87156ad6ede66c01b11fd16562))
* Upgrade cri-tools to v1.25.0 ([dc48e4b](https://github.com/mesosphere/konvoy-image-builder/commit/dc48e4b6e2e8c75ed93a5df19ade236babe32a8f))
* upgrade kubernetes version to 1.25.4 ([#579](https://github.com/mesosphere/konvoy-image-builder/issues/579)) ([6c98f94](https://github.com/mesosphere/konvoy-image-builder/commit/6c98f941ea37def9aac8ab85abd7df5e3b70ca63))
* use containerd with flatcar ([#300](https://github.com/mesosphere/konvoy-image-builder/issues/300)) ([b96f8bc](https://github.com/mesosphere/konvoy-image-builder/commit/b96f8bc65fa63cd047fe8d2ae1802005e2fe37c4))
* use published os-packages-bundles ([680d56e](https://github.com/mesosphere/konvoy-image-builder/commit/680d56e9035980b47a40fc3a532c443d71db173e))


### Bug Fixes

* add image_name and kubernetes_version to all infrastructure's output manifest.yaml ([#545](https://github.com/mesosphere/konvoy-image-builder/issues/545)) ([9152ffb](https://github.com/mesosphere/konvoy-image-builder/commit/9152ffbb623fec5c586edda685c571c1d039b928))
* add kuberentes version to azure gallery image name ([#534](https://github.com/mesosphere/konvoy-image-builder/issues/534)) ([cf03315](https://github.com/mesosphere/konvoy-image-builder/commit/cf033156866cc4740b946ada1f6e5f7f313decd9))
* add oracle7 fips target ([#581](https://github.com/mesosphere/konvoy-image-builder/issues/581)) ([adb8c47](https://github.com/mesosphere/konvoy-image-builder/commit/adb8c474531a0142d91de6e38ab21fa4a9328d42))
* add overrides, work-dir, and extra-args flags to upload artifacts ([#452](https://github.com/mesosphere/konvoy-image-builder/issues/452)) ([5367cf4](https://github.com/mesosphere/konvoy-image-builder/commit/5367cf4029716c04d2314dcb0e38acc9ab316cd7))
* add retries when installing SUSE packages  ([#532](https://github.com/mesosphere/konvoy-image-builder/issues/532)) ([ea8d183](https://github.com/mesosphere/konvoy-image-builder/commit/ea8d1838e077830eb137b2af751602e4fd8e67fe))
* add testify to go.mod ([91c38d5](https://github.com/mesosphere/konvoy-image-builder/commit/91c38d500238fae2f996e6164bf65e5505986587))
* adds a v1 ([ac6e72f](https://github.com/mesosphere/konvoy-image-builder/commit/ac6e72fb197e73050f56b941a1f850dfe5338f0a))
* Allow existing zypper process to finish and release lock ([22c2789](https://github.com/mesosphere/konvoy-image-builder/commit/22c2789c6fa417613195daff72ed5221ded9d66b))
* Allow user to provide a subset of registry configuration fields ([3571d3a](https://github.com/mesosphere/konvoy-image-builder/commit/3571d3ade91131fe9cbd439788500d733a1a1613))
* allows users to set kubernetes version through flag in build command ([04681f1](https://github.com/mesosphere/konvoy-image-builder/commit/04681f120d929103253e8efd02f03ada63311f3a))
* always use fix for CAPPP bumps ([#423](https://github.com/mesosphere/konvoy-image-builder/issues/423)) ([3e2af00](https://github.com/mesosphere/konvoy-image-builder/commit/3e2af00398317707d62abfbb0c2fdf2a72e3b797))
* **ansible:** allow rsa public keys ([#271](https://github.com/mesosphere/konvoy-image-builder/issues/271)) ([291e922](https://github.com/mesosphere/konvoy-image-builder/commit/291e9220b843560e7c905b48dd0c1b63ca8a7ab2))
* **ansible:** fix ubuntu 18.04 build ([2648075](https://github.com/mesosphere/konvoy-image-builder/commit/264807583982a8b0495a523a405d71e8937ebb8c))
* **ansible:** reuse roles for image saving ([e298986](https://github.com/mesosphere/konvoy-image-builder/commit/e298986a6c16e6b2ba82619bab46045346a9f097))
* **app:** remove unused `gen.go` ([8bf34b3](https://github.com/mesosphere/konvoy-image-builder/commit/8bf34b35eb56e30f6226b3092bed9a5db20fba53))
* **aws:** deprecate `--aws-instance-type` ([e0dcc56](https://github.com/mesosphere/konvoy-image-builder/commit/e0dcc561e0286db15ac480f55e8a3291e6e5f544))
* **azure:** always ensure image definitions ([965a769](https://github.com/mesosphere/konvoy-image-builder/commit/965a769a5d0a50287576144d1d67bcee133c7b78))
* **azure:** append build name to image sku ([#326](https://github.com/mesosphere/konvoy-image-builder/issues/326)) ([b921f42](https://github.com/mesosphere/konvoy-image-builder/commit/b921f42a9df41a721d3a571a03a2c3c3d961d4ec))
* **azure:** fix rhel 8 build name ([9e8ec95](https://github.com/mesosphere/konvoy-image-builder/commit/9e8ec952b789bb7ceb4c469c5a1b3512402d640c))
* **azure:** support dry run ([c6cb4f1](https://github.com/mesosphere/konvoy-image-builder/commit/c6cb4f18166ad495ec5c563ea5ebf897b9e164e1))
* build rocky linux 9.0 azure images ([#665](https://github.com/mesosphere/konvoy-image-builder/issues/665)) ([83ce61a](https://github.com/mesosphere/konvoy-image-builder/commit/83ce61aa05c75e24df6c4b9143cc9f5c2ddad768))
* bump mindthegap to preserves image IDs  ([#500](https://github.com/mesosphere/konvoy-image-builder/issues/500)) ([b58c969](https://github.com/mesosphere/konvoy-image-builder/commit/b58c969ece8a206ae42046b1df6ab781b086b8d8))
* Can not specify custom Packer directory  ([#559](https://github.com/mesosphere/konvoy-image-builder/issues/559)) ([949886c](https://github.com/mesosphere/konvoy-image-builder/commit/949886c8535a932d395d7a94b51d60bbbc4f6a5a))
* centos does not need RHSM. Fix conditions ([#497](https://github.com/mesosphere/konvoy-image-builder/issues/497)) ([11b4d98](https://github.com/mesosphere/konvoy-image-builder/commit/11b4d984bc8e07621ea2e597dbdd0148268bd864))
* change build name for rhel7 azure ([fc86874](https://github.com/mesosphere/konvoy-image-builder/commit/fc86874b326a235ec3f178a78341b53704c77c64))
* cleanup vsphere VM when building vSphere template in dry run ([#283](https://github.com/mesosphere/konvoy-image-builder/issues/283)) ([44b1a94](https://github.com/mesosphere/konvoy-image-builder/commit/44b1a9423b34ab444d095834a4537fafe7ca10ea))
* **cmd:** add subcommads to `build` and `generate` ([4fb3798](https://github.com/mesosphere/konvoy-image-builder/commit/4fb3798804ca403ae547566046a7052f6dfacdf9))
* Configure containerd runc plugin options with systemd cgroup driver ([#493](https://github.com/mesosphere/konvoy-image-builder/issues/493)) ([1704c72](https://github.com/mesosphere/konvoy-image-builder/commit/1704c72ad33f776384af2041bf5441906eadb36d))
* configure NetworkManager to prevent interfering with interfaces ([#231](https://github.com/mesosphere/konvoy-image-builder/issues/231)) ([36de19f](https://github.com/mesosphere/konvoy-image-builder/commit/36de19f3ec5b6401240d5ee0082ae59b3efacc2c))
* correctly set default pause image ([#367](https://github.com/mesosphere/konvoy-image-builder/issues/367)) ([164d03a](https://github.com/mesosphere/konvoy-image-builder/commit/164d03a4eaf5790897680cfbfa4ee6711d12ec0e))
* create base centos 7.9 template without default password ([#499](https://github.com/mesosphere/konvoy-image-builder/issues/499)) ([251911d](https://github.com/mesosphere/konvoy-image-builder/commit/251911df0ba4d5ec9e3648cc2ef6cb2ab54c47f6))
* create RHEL 8 base template without root and default user's password ([#492](https://github.com/mesosphere/konvoy-image-builder/issues/492)) ([a398397](https://github.com/mesosphere/konvoy-image-builder/commit/a3983971897f461b3b70a280b4fe1891c749839c))
* create systemd drop-in to disable NetworkManager-cloud-setup service ([2f6011a](https://github.com/mesosphere/konvoy-image-builder/commit/2f6011aeef8770802c5fd5db7ccb18fdda3ae1c2))
* **devkit:** pass `AZURE_TENANT_ID` to devkit ([94f44bc](https://github.com/mesosphere/konvoy-image-builder/commit/94f44bca8b26886af8d7d303484a118270c5420f))
* disable nm-cloud-setup only for AWS provider ([9da50ce](https://github.com/mesosphere/konvoy-image-builder/commit/9da50ce65525199efdf33e647f81751484fb1968))
* disable unnecessary linters  ([#521](https://github.com/mesosphere/konvoy-image-builder/issues/521)) ([1ad9232](https://github.com/mesosphere/konvoy-image-builder/commit/1ad92329f936634edbd67c08ecc883c5dc813829))
* dont ipv6 forward if you dont have ipv6 forwarding file  ([#598](https://github.com/mesosphere/konvoy-image-builder/issues/598)) ([40f9809](https://github.com/mesosphere/konvoy-image-builder/commit/40f98090cf885f10fc3fa772b987c7947ee2826c))
* Enable fs.may_detach_mounts kernel parameter on RHEL 7.9, and variants ([4e246ae](https://github.com/mesosphere/konvoy-image-builder/commit/4e246aeff9f76d98afd6cf171ab8737d57e753e5))
* fips.configure default value ([#547](https://github.com/mesosphere/konvoy-image-builder/issues/547)) ([a7b3e9b](https://github.com/mesosphere/konvoy-image-builder/commit/a7b3e9becdd039ebc7fe246abb9120ce1a09cb99))
* fix ref in release tag ci ([#427](https://github.com/mesosphere/konvoy-image-builder/issues/427)) ([8e8ad14](https://github.com/mesosphere/konvoy-image-builder/commit/8e8ad14d60528ea3d1b98aca39b5927413de6680))
* fixes an SSH error ([a7a2d62](https://github.com/mesosphere/konvoy-image-builder/commit/a7a2d6237953b59fd7b85247ca65ca40d465c04f))
* fixes version lock to set fact ([ebaba83](https://github.com/mesosphere/konvoy-image-builder/commit/ebaba83028e79adf8fb295b26961a18a15e9be50))
* flags not being set correctly ([#413](https://github.com/mesosphere/konvoy-image-builder/issues/413)) ([1309357](https://github.com/mesosphere/konvoy-image-builder/commit/1309357e7e40115d4990fc3382c31d24d0dc9250))
* **flatcar:** fix no update settings ([#308](https://github.com/mesosphere/konvoy-image-builder/issues/308)) ([03a618c](https://github.com/mesosphere/konvoy-image-builder/commit/03a618cf8b4901fbcf66572185c55ea77094cc16))
* force register RHSM ([#520](https://github.com/mesosphere/konvoy-image-builder/issues/520)) ([e60e7b3](https://github.com/mesosphere/konvoy-image-builder/commit/e60e7b3ab750c14dde85beccd27c317d2b1ff5d5))
* go-mod tidy ([7ccfaa7](https://github.com/mesosphere/konvoy-image-builder/commit/7ccfaa77ee44e2ef775c8c4f2c52390fdfa57eb8))
* gon release fixes ([#418](https://github.com/mesosphere/konvoy-image-builder/issues/418)) ([5565295](https://github.com/mesosphere/konvoy-image-builder/commit/55652951ccdeb5d2deed886c2bcce22cdb9d5132))
* gon.hcl ([#433](https://github.com/mesosphere/konvoy-image-builder/issues/433)) ([3fb4923](https://github.com/mesosphere/konvoy-image-builder/commit/3fb49232c128b95a29e93597bd4a9b90294fa32e))
* hardcode v3.4.x etcd version ([8d9c8e9](https://github.com/mesosphere/konvoy-image-builder/commit/8d9c8e924906cf55ddbab161b410fe60eee0d804))
* have extra-vars work ([a9b962b](https://github.com/mesosphere/konvoy-image-builder/commit/a9b962ba6071d68e2b45f22b43b68de1a47581ff))
* incorrect RHEL when condition ([#510](https://github.com/mesosphere/konvoy-image-builder/issues/510)) ([2b4248a](https://github.com/mesosphere/konvoy-image-builder/commit/2b4248ac543848bc30016ee2cd94f5cb1eb0f7ae))
* install cloud-init packages for vsphere in offline mode ([#406](https://github.com/mesosphere/konvoy-image-builder/issues/406)) ([64e3116](https://github.com/mesosphere/konvoy-image-builder/commit/64e3116cc8dafb979dfc22f535772d0ccefc104e))
* lint errors ([46a6b19](https://github.com/mesosphere/konvoy-image-builder/commit/46a6b195ca8528b19fa171e21f739d1f5cc8e951))
* **lint:** don't lint CHANGELOG.md ([b8401b2](https://github.com/mesosphere/konvoy-image-builder/commit/b8401b2b00d1751da70a60789daf87613c611014))
* **lint:** fix markdown rules ([b052bff](https://github.com/mesosphere/konvoy-image-builder/commit/b052bff48bd215d032c364518b94d54015e0d617))
* **lint:** fix textlint rules ([731e192](https://github.com/mesosphere/konvoy-image-builder/commit/731e192937f5761da0d1fda01d9b8b3f76c2cf9f))
* linting errors in changelog ([4eb2f96](https://github.com/mesosphere/konvoy-image-builder/commit/4eb2f9613953743b4bb007f97ccdd81bc6acee64))
* make non eus repos logic generic ([58dafd6](https://github.com/mesosphere/konvoy-image-builder/commit/58dafd62708f4249def11ecd733c2f5b79d0c201))
* makefile targets for NVIDIA GPU support ([#285](https://github.com/mesosphere/konvoy-image-builder/issues/285)) ([b56c5af](https://github.com/mesosphere/konvoy-image-builder/commit/b56c5afd51bad97844112854521a6aae8d7ff305))
* match the image name for GCP with AWS ([cc26ea7](https://github.com/mesosphere/konvoy-image-builder/commit/cc26ea74ba5e259d13b2c491d700040f1734c911))
* missing ansible.utils collection ([d982a8d](https://github.com/mesosphere/konvoy-image-builder/commit/d982a8da7487be273917851ab74f41c77a4bf9fe))
* move goreleaser to where it really is ([82992d5](https://github.com/mesosphere/konvoy-image-builder/commit/82992d53d1c1b5a75baa15f5d14120000e58b706))
* notarization and upload fixes ([#435](https://github.com/mesosphere/konvoy-image-builder/issues/435)) ([c92c6ee](https://github.com/mesosphere/konvoy-image-builder/commit/c92c6ee7bb7aa198d5f22d2040e04b7ce994283c))
* nvidia override files with correct information ([#538](https://github.com/mesosphere/konvoy-image-builder/issues/538)) ([c0eebd9](https://github.com/mesosphere/konvoy-image-builder/commit/c0eebd9c127c5e86c031d770c907558dbfea13b2))
* On SUSE, remove containerd.io package irrespective of version ([9261e85](https://github.com/mesosphere/konvoy-image-builder/commit/9261e8592b280d8322509db3cf2fca77523a22e9))
* **os-packages:** prevent clean error ([cda2e50](https://github.com/mesosphere/konvoy-image-builder/commit/cda2e50d6b4da98d15209168b19791bb3e44cd1a))
* **os-packages:** set defaults for targets ([3bfc439](https://github.com/mesosphere/konvoy-image-builder/commit/3bfc439a2daf17baae37fe364a1d48c5588c574c))
* ova packer template ([ebcd1da](https://github.com/mesosphere/konvoy-image-builder/commit/ebcd1da234e4fd8d7a13030b4b49b77ee74a093b))
* **packer:** fix spacing typo in packer template ([92fa950](https://github.com/mesosphere/konvoy-image-builder/commit/92fa950a29d8694dfd83e1817b643cc4c23095f0))
* Parse command output without using shell pipelines ([#369](https://github.com/mesosphere/konvoy-image-builder/issues/369)) ([f7b9d3e](https://github.com/mesosphere/konvoy-image-builder/commit/f7b9d3ef8531969cd4df4ae6274bf2d811116266))
* pass GOOGLE_APPLICATION_CREDENTIALS env and file to wrapper ([6a472bf](https://github.com/mesosphere/konvoy-image-builder/commit/6a472bfbedd280473ac41990d45ca2f3f8c23d51))
* pass vSphere envs in wrapper ([5fc0fa0](https://github.com/mesosphere/konvoy-image-builder/commit/5fc0fa08ff797a767d1b160b3a2c9d86b32cc434))
* **pkg:** remove unused `config` package ([1c6509a](https://github.com/mesosphere/konvoy-image-builder/commit/1c6509a97fe057b93b2d6414bb6b303df44adaea))
* propogate signals to packer sub command ([#593](https://github.com/mesosphere/konvoy-image-builder/issues/593)) ([788f745](https://github.com/mesosphere/konvoy-image-builder/commit/788f745925ff7b21fc0a976d16e460fdfbcf6cb8))
* README remove old  test status ([67102d1](https://github.com/mesosphere/konvoy-image-builder/commit/67102d10fed6449af281b5b8474d27ff5023b63f))
* **release:** run goreleaser on release publish ([f1218a1](https://github.com/mesosphere/konvoy-image-builder/commit/f1218a13167678c7e49ebc71347eb9f4f7f869a9))
* remove builder user in sysprep ([#469](https://github.com/mesosphere/konvoy-image-builder/issues/469)) ([dd99d11](https://github.com/mesosphere/konvoy-image-builder/commit/dd99d11691f482f91dae1f1e22871fffa9c66f9d))
* remove d2iq specific packer config for vSphere in images/ ([cdec236](https://github.com/mesosphere/konvoy-image-builder/commit/cdec236c3d637d71499fad1aaaf0c63495a5fd4b))
* remove d2iq vars from GCP image files ([74efc02](https://github.com/mesosphere/konvoy-image-builder/commit/74efc0212bba2a86d86fe667b0abe9f41baec870))
* remove execute bits from playbook ([8a44a81](https://github.com/mesosphere/konvoy-image-builder/commit/8a44a8127ee6911f3976d22ef146de6a46508bf9))
* remove extra "release"  keyword from vsphere template name ([#336](https://github.com/mesosphere/konvoy-image-builder/issues/336)) ([a14f6ef](https://github.com/mesosphere/konvoy-image-builder/commit/a14f6ef6e4e1f2f9306f9138f947c281979b27ab))
* remove fips.configure from a user facing override ([#516](https://github.com/mesosphere/konvoy-image-builder/issues/516)) ([17af80f](https://github.com/mesosphere/konvoy-image-builder/commit/17af80f1fec6aec7d38cd28da06d15b8881509df))
* remove host user's home directory mount from the KIB wrapper container  ([#589](https://github.com/mesosphere/konvoy-image-builder/issues/589)) ([6abcd18](https://github.com/mesosphere/konvoy-image-builder/commit/6abcd187ede4a8b535846658b45b67e88534a5fc))
* remove major version 7 specific code ([8e79910](https://github.com/mesosphere/konvoy-image-builder/commit/8e799101d335370a12212b8f4ac3565d9eb2f04f))
* remove mark inventory file as required ([#455](https://github.com/mesosphere/konvoy-image-builder/issues/455)) ([0e24f96](https://github.com/mesosphere/konvoy-image-builder/commit/0e24f968155dbf5c1d98fb194c15c2260bfb1810))
* remove note to add promotion job ([d9cd670](https://github.com/mesosphere/konvoy-image-builder/commit/d9cd6705fe0ef14eeff9bb3d6a29c7bd4d54ca03))
* remove release ver ([9276b1f](https://github.com/mesosphere/konvoy-image-builder/commit/9276b1f82f2f8c09f470f3beee75fd93ec5e1400))
* Remove task to create kubelet systemd drop-in from containerd task ([39d4fa5](https://github.com/mesosphere/konvoy-image-builder/commit/39d4fa5b0c9c7c78db7e732f253e652870a49709))
* remove unused 'global' playbook ([a3356c0](https://github.com/mesosphere/konvoy-image-builder/commit/a3356c0680449d4108c809f1d9f2e3b7e3bea24f))
* remove unused 'images' group vars ([31eb405](https://github.com/mesosphere/konvoy-image-builder/commit/31eb4058eb4c9d278bbaecd7f6578722ad4799a1))
* replace broken centos 8 appstream repo with alma linux repos ([#227](https://github.com/mesosphere/konvoy-image-builder/issues/227)) ([ada2ca9](https://github.com/mesosphere/konvoy-image-builder/commit/ada2ca94bfd842526a4af9878a1b67ff80e2afa3))
* retag coredns image with k8s.gcr.io/coredns ([#611](https://github.com/mesosphere/konvoy-image-builder/issues/611)) ([73ea3c7](https://github.com/mesosphere/konvoy-image-builder/commit/73ea3c7c43a24bf7f5009f554ddec05ae1b70ee1))
* rhel 8.4 SKU for azure ([cee86a1](https://github.com/mesosphere/konvoy-image-builder/commit/cee86a1f26f5ae5e00ea6e7cb822665f1e8f16ee))
* set different non-eus repos for different versions ([92f25e7](https://github.com/mesosphere/konvoy-image-builder/commit/92f25e7c73f74683d682c6ed83122e4b194a30ab))
* set feature flag for cloud-init to ignore errors ([#550](https://github.com/mesosphere/konvoy-image-builder/issues/550)) ([b20f671](https://github.com/mesosphere/konvoy-image-builder/commit/b20f67114f2bdb4b817a27f399b29f27f5245959))
* set outputs from release please ([#351](https://github.com/mesosphere/konvoy-image-builder/issues/351)) ([65dce6f](https://github.com/mesosphere/konvoy-image-builder/commit/65dce6f1271198d4c45f8004f8b89e0dc478bcfc))
* set the correct KIB version ami tag ([d92dd74](https://github.com/mesosphere/konvoy-image-builder/commit/d92dd744a92edcd8b3d0aae10a0cba44d78b5dd0))
* set token param correctly ([#361](https://github.com/mesosphere/konvoy-image-builder/issues/361)) ([70d7200](https://github.com/mesosphere/konvoy-image-builder/commit/70d720014a657b373c5351271d02524e4b85f284))
* support flatcar 3033.2.0 ([#299](https://github.com/mesosphere/konvoy-image-builder/issues/299)) ([43bdfd2](https://github.com/mesosphere/konvoy-image-builder/commit/43bdfd27298414130c4b3703636377c2c64fd8c7))
* try installing epel modular for azure ([6276cb8](https://github.com/mesosphere/konvoy-image-builder/commit/6276cb8be7244276464f2dc95381139e80789760))
* try it another way ([0e200f4](https://github.com/mesosphere/konvoy-image-builder/commit/0e200f46ca8735d0e03f351fffd3fcb56878f5c4))
* ubuntu  for vsphere  ([#458](https://github.com/mesosphere/konvoy-image-builder/issues/458)) ([7b0985b](https://github.com/mesosphere/konvoy-image-builder/commit/7b0985b490ed821ce3fe12f009dfc5dbc49a3dca))
* upgrade ansible to 6.3.0 and fix CI flakes ([#503](https://github.com/mesosphere/konvoy-image-builder/issues/503)) ([1e71e20](https://github.com/mesosphere/konvoy-image-builder/commit/1e71e208b2a2e69d82cb48391fc5e3519f434ae1))
* upgrade azure packages to 1.x.x and golang to 1.18 ([#473](https://github.com/mesosphere/konvoy-image-builder/issues/473)) ([6488004](https://github.com/mesosphere/konvoy-image-builder/commit/6488004dfdc995db49139ab88c01508935e3a9d6))
* upload command flag ([cb31f33](https://github.com/mesosphere/konvoy-image-builder/commit/cb31f330589927fa1e791547dd33d83926286a7f))
* upload nvidia runfile ([#511](https://github.com/mesosphere/konvoy-image-builder/issues/511)) ([2bc6762](https://github.com/mesosphere/konvoy-image-builder/commit/2bc6762f4d7e555738e6920ac95659b0b1527717))
* use --force when retagging CoreDNS image ([#628](https://github.com/mesosphere/konvoy-image-builder/issues/628)) ([ee1a11e](https://github.com/mesosphere/konvoy-image-builder/commit/ee1a11ecb4b194a68bbb5b4db92b2478ebc3170a))
* use bastion in offline fips ova rhel builds ([#307](https://github.com/mesosphere/konvoy-image-builder/issues/307)) ([8d3e338](https://github.com/mesosphere/konvoy-image-builder/commit/8d3e3387779df6117e65ed98783ae1bc1194a69d))
* use crictl to pull images and supports mirrors ([#252](https://github.com/mesosphere/konvoy-image-builder/issues/252)) ([f14f841](https://github.com/mesosphere/konvoy-image-builder/commit/f14f841c5d325d9677349c18f5e717109e661e7f))
* use different build name ([4dd6304](https://github.com/mesosphere/konvoy-image-builder/commit/4dd6304a542081d22deaf7760acf8d46c07dad42))
* use different build name to avoid conflict ([e00317d](https://github.com/mesosphere/konvoy-image-builder/commit/e00317ddab4ca19ec1c29870302c700cf5c62a0a))
* use environment variables to authenticate with base vsphere template ([#552](https://github.com/mesosphere/konvoy-image-builder/issues/552)) ([9688d4f](https://github.com/mesosphere/konvoy-image-builder/commit/9688d4f2b24d4851d0396ab02a5a12868efabedb))
* use new centos 7.9 base AMI ([#573](https://github.com/mesosphere/konvoy-image-builder/issues/573)) ([c987aa2](https://github.com/mesosphere/konvoy-image-builder/commit/c987aa23cf9523a762b9f89314f68fa26525827b))
* use new oracle 7.9 ami ([#626](https://github.com/mesosphere/konvoy-image-builder/issues/626)) ([0ca10dd](https://github.com/mesosphere/konvoy-image-builder/commit/0ca10dd86fe91644c223b308a9e02c99c99d9465))
* use other user token that can run actions ([#429](https://github.com/mesosphere/konvoy-image-builder/issues/429)) ([efc7d1c](https://github.com/mesosphere/konvoy-image-builder/commit/efc7d1c9713249c94e0e72c1059ab5b2eebface5))
* use same defaults and flags as in konvoy ([4c90ac3](https://github.com/mesosphere/konvoy-image-builder/commit/4c90ac3dc31d2a07af3d02620bf68627bc09c076))
* use the same instance-type as konvoy ([#393](https://github.com/mesosphere/konvoy-image-builder/issues/393)) ([73abc28](https://github.com/mesosphere/konvoy-image-builder/commit/73abc281daa1fa7f00181282f266c853d060b3b4))
* various cleanups for release-tag action ([#431](https://github.com/mesosphere/konvoy-image-builder/issues/431)) ([a5eb7be](https://github.com/mesosphere/konvoy-image-builder/commit/a5eb7bed1bc32983f1e4dbc8365e50203b2c98d8))


### Miscellaneous

* release 1.24.1 ([#558](https://github.com/mesosphere/konvoy-image-builder/issues/558)) ([1734a69](https://github.com/mesosphere/konvoy-image-builder/commit/1734a696f05aed0cba8575b2113d227b5fde4065))


### ci

* adds azure GHA test ([#648](https://github.com/mesosphere/konvoy-image-builder/issues/648)) ([ebb766d](https://github.com/mesosphere/konvoy-image-builder/commit/ebb766d20a73d090ca56913eac001fe3dd58197d))

## [2.0.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.25.2...v2.0.0) (2023-02-02)


### Features

* add support for creating Ubuntu 20.04 base OVA template ([8a6608c](https://github.com/mesosphere/konvoy-image-builder/commit/8a6608c602f4e10816f10930d721d65542f2882f))
* allow submaps in images files  ([#630](https://github.com/mesosphere/konvoy-image-builder/issues/630)) ([09bbe5e](https://github.com/mesosphere/konvoy-image-builder/commit/09bbe5ed7c69bf31b4555958eb19bbad88f8bef6))
* build rocky linux 9.1 images ([#637](https://github.com/mesosphere/konvoy-image-builder/issues/637)) ([579e620](https://github.com/mesosphere/konvoy-image-builder/commit/579e620a94f2017cff84f496e0141734edd6f038))
* build vsphere template for rockylinux 9.1 ([#649](https://github.com/mesosphere/konvoy-image-builder/issues/649)) ([5908ed3](https://github.com/mesosphere/konvoy-image-builder/commit/5908ed34836a47d8c26e1a35a7a7bb8a38b97f13))
* HCL instead of JSON packer templates  ([#507](https://github.com/mesosphere/konvoy-image-builder/issues/507)) ([0523fd2](https://github.com/mesosphere/konvoy-image-builder/commit/0523fd2c5e6e1ad1d4962f60a47039aa145a6e42))
* Install specific cri-tools package on debian derivatives ([68200b1](https://github.com/mesosphere/konvoy-image-builder/commit/68200b1da283fc30e23ed24c6fdd1349dc06c348))
* support building Ubuntu 20.04 with offline OS packages bundle ([#627](https://github.com/mesosphere/konvoy-image-builder/issues/627)) ([0e48add](https://github.com/mesosphere/konvoy-image-builder/commit/0e48add381fa8dff6466c1befd47101d7b2b23a4))
* Upgrade cri-tools to v1.25.0 ([dc48e4b](https://github.com/mesosphere/konvoy-image-builder/commit/dc48e4b6e2e8c75ed93a5df19ade236babe32a8f))


### Bug Fixes

* use --force when retagging CoreDNS image ([#628](https://github.com/mesosphere/konvoy-image-builder/issues/628)) ([ee1a11e](https://github.com/mesosphere/konvoy-image-builder/commit/ee1a11ecb4b194a68bbb5b4db92b2478ebc3170a))
* use new oracle 7.9 ami ([#626](https://github.com/mesosphere/konvoy-image-builder/issues/626)) ([0ca10dd](https://github.com/mesosphere/konvoy-image-builder/commit/0ca10dd86fe91644c223b308a9e02c99c99d9465))


### ci

* adds azure GHA test ([#648](https://github.com/mesosphere/konvoy-image-builder/issues/648)) ([ebb766d](https://github.com/mesosphere/konvoy-image-builder/commit/ebb766d20a73d090ca56913eac001fe3dd58197d))

## [1.25.2](https://github.com/mesosphere/konvoy-image-builder/compare/v1.25.1...v1.25.2) (2022-12-07)


### Bug Fixes

* dont ipv6 forward if you dont have ipv6 forwarding file  ([#598](https://github.com/mesosphere/konvoy-image-builder/issues/598)) ([40f9809](https://github.com/mesosphere/konvoy-image-builder/commit/40f98090cf885f10fc3fa772b987c7947ee2826c))

## [1.25.1](https://github.com/mesosphere/konvoy-image-builder/compare/v1.25.0...v1.25.1) (2022-12-01)


### Bug Fixes

* Enable fs.may_detach_mounts kernel parameter on RHEL 7.9, and variants ([4e246ae](https://github.com/mesosphere/konvoy-image-builder/commit/4e246aeff9f76d98afd6cf171ab8737d57e753e5))
* propogate signals to packer sub command ([#593](https://github.com/mesosphere/konvoy-image-builder/issues/593)) ([788f745](https://github.com/mesosphere/konvoy-image-builder/commit/788f745925ff7b21fc0a976d16e460fdfbcf6cb8))
* remove host user's home directory mount from the KIB wrapper container  ([#589](https://github.com/mesosphere/konvoy-image-builder/issues/589)) ([6abcd18](https://github.com/mesosphere/konvoy-image-builder/commit/6abcd187ede4a8b535846658b45b67e88534a5fc))

## [1.25.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.24.2...v1.25.0) (2022-11-21)


### Features

* upgrade kubernetes version to 1.25.4 ([#579](https://github.com/mesosphere/konvoy-image-builder/issues/579)) ([6c98f94](https://github.com/mesosphere/konvoy-image-builder/commit/6c98f941ea37def9aac8ab85abd7df5e3b70ca63))


### Bug Fixes

* add oracle7 fips target ([#581](https://github.com/mesosphere/konvoy-image-builder/issues/581)) ([adb8c47](https://github.com/mesosphere/konvoy-image-builder/commit/adb8c474531a0142d91de6e38ab21fa4a9328d42))

## [1.24.2](https://github.com/mesosphere/konvoy-image-builder/compare/v1.24.1...v1.24.2) (2022-11-14)


### Bug Fixes

* use new centos 7.9 base AMI ([#573](https://github.com/mesosphere/konvoy-image-builder/issues/573)) ([c987aa2](https://github.com/mesosphere/konvoy-image-builder/commit/c987aa23cf9523a762b9f89314f68fa26525827b))

## [1.24.1](https://github.com/mesosphere/konvoy-image-builder/compare/v1.24.0...v1.24.1) (2022-11-04)


### Features

* adding make targets needed for offline nvidia rhel8.6 ([#544](https://github.com/mesosphere/konvoy-image-builder/issues/544)) ([7f9516c](https://github.com/mesosphere/konvoy-image-builder/commit/7f9516ca7ec23598200a520286feca37f04f09eb))


### Bug Fixes

* add image_name and kubernetes_version to all infrastructure's output manifest.yaml ([#545](https://github.com/mesosphere/konvoy-image-builder/issues/545)) ([9152ffb](https://github.com/mesosphere/konvoy-image-builder/commit/9152ffbb623fec5c586edda685c571c1d039b928))
* Can not specify custom Packer directory  ([#559](https://github.com/mesosphere/konvoy-image-builder/issues/559)) ([949886c](https://github.com/mesosphere/konvoy-image-builder/commit/949886c8535a932d395d7a94b51d60bbbc4f6a5a))
* fips.configure default value ([#547](https://github.com/mesosphere/konvoy-image-builder/issues/547)) ([a7b3e9b](https://github.com/mesosphere/konvoy-image-builder/commit/a7b3e9becdd039ebc7fe246abb9120ce1a09cb99))
* set feature flag for cloud-init to ignore errors ([#550](https://github.com/mesosphere/konvoy-image-builder/issues/550)) ([b20f671](https://github.com/mesosphere/konvoy-image-builder/commit/b20f67114f2bdb4b817a27f399b29f27f5245959))
* use environment variables to authenticate with base vsphere template ([#552](https://github.com/mesosphere/konvoy-image-builder/issues/552)) ([9688d4f](https://github.com/mesosphere/konvoy-image-builder/commit/9688d4f2b24d4851d0396ab02a5a12868efabedb))


### Miscellaneous

* release 1.24.1 ([#558](https://github.com/mesosphere/konvoy-image-builder/issues/558)) ([1734a69](https://github.com/mesosphere/konvoy-image-builder/commit/1734a696f05aed0cba8575b2113d227b5fde4065))

## [1.24.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.23.1...v1.24.0) (2022-10-18)


### Features

* add RHEl 8.6 base template ([#530](https://github.com/mesosphere/konvoy-image-builder/issues/530)) ([f20fa83](https://github.com/mesosphere/konvoy-image-builder/commit/f20fa83707906b9492050034aad70edcf052f6d2))
* Add toml-merge image for containerd supplementary images ([#518](https://github.com/mesosphere/konvoy-image-builder/issues/518)) ([827fe40](https://github.com/mesosphere/konvoy-image-builder/commit/827fe4023fdade7816111edeb451f6bee65a952b))
* build AMI and OVA for RHEL 8.6 networked, nvidia and airgapped flavors ([#531](https://github.com/mesosphere/konvoy-image-builder/issues/531)) ([249c1b4](https://github.com/mesosphere/konvoy-image-builder/commit/249c1b4f62fcf49ae78eae03ec2fa032734e45f6))
* update to Kubernetes v1.24.6 ([#529](https://github.com/mesosphere/konvoy-image-builder/issues/529)) ([248821c](https://github.com/mesosphere/konvoy-image-builder/commit/248821cd3bf48b87156ad6ede66c01b11fd16562))


### Bug Fixes

* add kuberentes version to azure gallery image name ([#534](https://github.com/mesosphere/konvoy-image-builder/issues/534)) ([cf03315](https://github.com/mesosphere/konvoy-image-builder/commit/cf033156866cc4740b946ada1f6e5f7f313decd9))
* add retries when installing SUSE packages  ([#532](https://github.com/mesosphere/konvoy-image-builder/issues/532)) ([ea8d183](https://github.com/mesosphere/konvoy-image-builder/commit/ea8d1838e077830eb137b2af751602e4fd8e67fe))
* Configure containerd runc plugin options with systemd cgroup driver ([#493](https://github.com/mesosphere/konvoy-image-builder/issues/493)) ([1704c72](https://github.com/mesosphere/konvoy-image-builder/commit/1704c72ad33f776384af2041bf5441906eadb36d))
* disable unnecessary linters  ([#521](https://github.com/mesosphere/konvoy-image-builder/issues/521)) ([1ad9232](https://github.com/mesosphere/konvoy-image-builder/commit/1ad92329f936634edbd67c08ecc883c5dc813829))
* force register RHSM ([#520](https://github.com/mesosphere/konvoy-image-builder/issues/520)) ([e60e7b3](https://github.com/mesosphere/konvoy-image-builder/commit/e60e7b3ab750c14dde85beccd27c317d2b1ff5d5))
* nvidia override files with correct information ([#538](https://github.com/mesosphere/konvoy-image-builder/issues/538)) ([c0eebd9](https://github.com/mesosphere/konvoy-image-builder/commit/c0eebd9c127c5e86c031d770c907558dbfea13b2))
* remove fips.configure from a user facing override ([#516](https://github.com/mesosphere/konvoy-image-builder/issues/516)) ([17af80f](https://github.com/mesosphere/konvoy-image-builder/commit/17af80f1fec6aec7d38cd28da06d15b8881509df))

## [1.23.1](https://github.com/mesosphere/konvoy-image-builder/compare/v1.23.0...v1.23.1) (2022-09-27)


### Bug Fixes

* upload nvidia runfile ([#511](https://github.com/mesosphere/konvoy-image-builder/issues/511)) ([2bc6762](https://github.com/mesosphere/konvoy-image-builder/commit/2bc6762f4d7e555738e6920ac95659b0b1527717))

## [1.23.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.22.0...v1.23.0) (2022-09-23)


### Features

* configure fips for rhel 8 ([#508](https://github.com/mesosphere/konvoy-image-builder/issues/508)) ([5269ff5](https://github.com/mesosphere/konvoy-image-builder/commit/5269ff56f56feb156d1ac0cee80953cea51a4db8))


### Bug Fixes

* incorrect RHEL when condition ([#510](https://github.com/mesosphere/konvoy-image-builder/issues/510)) ([2b4248a](https://github.com/mesosphere/konvoy-image-builder/commit/2b4248ac543848bc30016ee2cd94f5cb1eb0f7ae))
* ubuntu  for vsphere  ([#458](https://github.com/mesosphere/konvoy-image-builder/issues/458)) ([7b0985b](https://github.com/mesosphere/konvoy-image-builder/commit/7b0985b490ed821ce3fe12f009dfc5dbc49a3dca))

## [1.22.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.21.0...v1.22.0) (2022-09-20)


### Features

* install nvidia driver using runfile ([#482](https://github.com/mesosphere/konvoy-image-builder/issues/482)) ([22f89b8](https://github.com/mesosphere/konvoy-image-builder/commit/22f89b8c95d176455a1e69352f4716867204293f))


### Bug Fixes

* bump mindthegap to preserves image IDs  ([#500](https://github.com/mesosphere/konvoy-image-builder/issues/500)) ([b58c969](https://github.com/mesosphere/konvoy-image-builder/commit/b58c969ece8a206ae42046b1df6ab781b086b8d8))
* upgrade ansible to 6.3.0 and fix CI flakes ([#503](https://github.com/mesosphere/konvoy-image-builder/issues/503)) ([1e71e20](https://github.com/mesosphere/konvoy-image-builder/commit/1e71e208b2a2e69d82cb48391fc5e3519f434ae1))

## [1.21.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.20.0...v1.21.0) (2022-09-13)


### Features

* authenticate to vsphere base template using ssh private key and ssh auth agent. ([#498](https://github.com/mesosphere/konvoy-image-builder/issues/498)) ([aa4b7a5](https://github.com/mesosphere/konvoy-image-builder/commit/aa4b7a5f9a0b4f5bcb2198d74dc2337c19142c51))
* import container images with mindthegap ([#476](https://github.com/mesosphere/konvoy-image-builder/issues/476)) ([657f102](https://github.com/mesosphere/konvoy-image-builder/commit/657f102fee4ddad98990a294676e118b20db8673))


### Bug Fixes

* **ansible:** fix ubuntu 18.04 build ([2648075](https://github.com/mesosphere/konvoy-image-builder/commit/264807583982a8b0495a523a405d71e8937ebb8c))
* **azure:** support dry run ([c6cb4f1](https://github.com/mesosphere/konvoy-image-builder/commit/c6cb4f18166ad495ec5c563ea5ebf897b9e164e1))
* centos does not need RHSM. Fix conditions ([#497](https://github.com/mesosphere/konvoy-image-builder/issues/497)) ([11b4d98](https://github.com/mesosphere/konvoy-image-builder/commit/11b4d984bc8e07621ea2e597dbdd0148268bd864))
* create base centos 7.9 template without default password ([#499](https://github.com/mesosphere/konvoy-image-builder/issues/499)) ([251911d](https://github.com/mesosphere/konvoy-image-builder/commit/251911df0ba4d5ec9e3648cc2ef6cb2ab54c47f6))
* create RHEL 8 base template without root and default user's password ([#492](https://github.com/mesosphere/konvoy-image-builder/issues/492)) ([a398397](https://github.com/mesosphere/konvoy-image-builder/commit/a3983971897f461b3b70a280b4fe1891c749839c))

## [1.20.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.19.9...v1.20.0) (2022-08-24)


### Features

* add cloudendpoint to azure flags ([#470](https://github.com/mesosphere/konvoy-image-builder/issues/470)) ([12e519c](https://github.com/mesosphere/konvoy-image-builder/commit/12e519c054ac47de44efdbf5f8d73a87a056d021))
* bump Ansible to 4.10.0 ([#426](https://github.com/mesosphere/konvoy-image-builder/issues/426)) ([c04581e](https://github.com/mesosphere/konvoy-image-builder/commit/c04581ee9c7a2750aa9f72e8baebdd29596471c6))
* bump kubernetes version to 1.24.4 ([#468](https://github.com/mesosphere/konvoy-image-builder/issues/468)) ([0904949](https://github.com/mesosphere/konvoy-image-builder/commit/0904949684377ef776adc01bfc94e5f2130a4c2f))
* disable password ssh auth ([#474](https://github.com/mesosphere/konvoy-image-builder/issues/474)) ([ba1e55b](https://github.com/mesosphere/konvoy-image-builder/commit/ba1e55b71bc5ba389ff9bc1675ee168c19b73858))
* move disabling swap and firewalld to a shared play ([#451](https://github.com/mesosphere/konvoy-image-builder/issues/451)) ([bc5b71b](https://github.com/mesosphere/konvoy-image-builder/commit/bc5b71becc96143693276e154b4c3e4291b5f768))


### Bug Fixes

* remove builder user in sysprep ([#469](https://github.com/mesosphere/konvoy-image-builder/issues/469)) ([dd99d11](https://github.com/mesosphere/konvoy-image-builder/commit/dd99d11691f482f91dae1f1e22871fffa9c66f9d))
* upgrade azure packages to 1.x.x and golang to 1.18 ([#473](https://github.com/mesosphere/konvoy-image-builder/issues/473)) ([6488004](https://github.com/mesosphere/konvoy-image-builder/commit/6488004dfdc995db49139ab88c01508935e3a9d6))

## [1.19.9](https://github.com/mesosphere/konvoy-image-builder/compare/v1.19.8...v1.19.9) (2022-08-04)


### Bug Fixes

* remove mark inventory file as required ([#455](https://github.com/mesosphere/konvoy-image-builder/issues/455)) ([0e24f96](https://github.com/mesosphere/konvoy-image-builder/commit/0e24f968155dbf5c1d98fb194c15c2260bfb1810))

## [1.19.8](https://github.com/mesosphere/konvoy-image-builder/compare/v1.19.7...v1.19.8) (2022-08-03)


### Bug Fixes

* add overrides, work-dir, and extra-args flags to upload artifacts ([#452](https://github.com/mesosphere/konvoy-image-builder/issues/452)) ([5367cf4](https://github.com/mesosphere/konvoy-image-builder/commit/5367cf4029716c04d2314dcb0e38acc9ab316cd7))

## [1.19.7](https://github.com/mesosphere/konvoy-image-builder/compare/v1.19.6...v1.19.7) (2022-07-21)


### Bug Fixes

* notarization and upload fixes ([#435](https://github.com/mesosphere/konvoy-image-builder/issues/435)) ([c92c6ee](https://github.com/mesosphere/konvoy-image-builder/commit/c92c6ee7bb7aa198d5f22d2040e04b7ce994283c))

## [1.19.6](https://github.com/mesosphere/konvoy-image-builder/compare/v1.19.5...v1.19.6) (2022-07-20)


### Bug Fixes

* gon.hcl ([#433](https://github.com/mesosphere/konvoy-image-builder/issues/433)) ([3fb4923](https://github.com/mesosphere/konvoy-image-builder/commit/3fb49232c128b95a29e93597bd4a9b90294fa32e))

## [1.19.5](https://github.com/mesosphere/konvoy-image-builder/compare/v1.19.4...v1.19.5) (2022-07-20)


### Bug Fixes

* various cleanups for release-tag action ([#431](https://github.com/mesosphere/konvoy-image-builder/issues/431)) ([a5eb7be](https://github.com/mesosphere/konvoy-image-builder/commit/a5eb7bed1bc32983f1e4dbc8365e50203b2c98d8))

## [1.19.4](https://github.com/mesosphere/konvoy-image-builder/compare/v1.19.3...v1.19.4) (2022-07-20)


### Bug Fixes

* use other user token that can run actions ([#429](https://github.com/mesosphere/konvoy-image-builder/issues/429)) ([efc7d1c](https://github.com/mesosphere/konvoy-image-builder/commit/efc7d1c9713249c94e0e72c1059ab5b2eebface5))

## [1.19.3](https://github.com/mesosphere/konvoy-image-builder/compare/v1.19.2...v1.19.3) (2022-07-20)


### Bug Fixes

* fix ref in release tag ci ([#427](https://github.com/mesosphere/konvoy-image-builder/issues/427)) ([8e8ad14](https://github.com/mesosphere/konvoy-image-builder/commit/8e8ad14d60528ea3d1b98aca39b5927413de6680))

## [1.19.2](https://github.com/mesosphere/konvoy-image-builder/compare/v1.19.1...v1.19.2) (2022-07-20)


### Bug Fixes

* always use fix for CAPPP bumps ([#423](https://github.com/mesosphere/konvoy-image-builder/issues/423)) ([3e2af00](https://github.com/mesosphere/konvoy-image-builder/commit/3e2af00398317707d62abfbb0c2fdf2a72e3b797))
* gon release fixes ([#418](https://github.com/mesosphere/konvoy-image-builder/issues/418)) ([5565295](https://github.com/mesosphere/konvoy-image-builder/commit/55652951ccdeb5d2deed886c2bcce22cdb9d5132))

## [1.19.1](https://github.com/mesosphere/konvoy-image-builder/compare/v1.19.0...v1.19.1) (2022-07-19)


### Bug Fixes

* flags not being set correctly ([#413](https://github.com/mesosphere/konvoy-image-builder/issues/413)) ([1309357](https://github.com/mesosphere/konvoy-image-builder/commit/1309357e7e40115d4990fc3382c31d24d0dc9250))

## [1.19.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.18.1...v1.19.0) (2022-07-12)


### Features

* set a GCP image-family that can be used in dkp ([e2d3ad3](https://github.com/mesosphere/konvoy-image-builder/commit/e2d3ad31835e979da6181e68e003fd5913b7bec8))


### Bug Fixes

* install cloud-init packages for vsphere in offline mode ([#406](https://github.com/mesosphere/konvoy-image-builder/issues/406)) ([64e3116](https://github.com/mesosphere/konvoy-image-builder/commit/64e3116cc8dafb979dfc22f535772d0ccefc104e))
* match the image name for GCP with AWS ([cc26ea7](https://github.com/mesosphere/konvoy-image-builder/commit/cc26ea74ba5e259d13b2c491d700040f1734c911))
* pass GOOGLE_APPLICATION_CREDENTIALS env and file to wrapper ([6a472bf](https://github.com/mesosphere/konvoy-image-builder/commit/6a472bfbedd280473ac41990d45ca2f3f8c23d51))
* pass vSphere envs in wrapper ([5fc0fa0](https://github.com/mesosphere/konvoy-image-builder/commit/5fc0fa08ff797a767d1b160b3a2c9d86b32cc434))
* remove d2iq specific packer config for vSphere in images/ ([cdec236](https://github.com/mesosphere/konvoy-image-builder/commit/cdec236c3d637d71499fad1aaaf0c63495a5fd4b))
* remove d2iq vars from GCP image files ([74efc02](https://github.com/mesosphere/konvoy-image-builder/commit/74efc0212bba2a86d86fe667b0abe9f41baec870))
* use same defaults and flags as in konvoy ([4c90ac3](https://github.com/mesosphere/konvoy-image-builder/commit/4c90ac3dc31d2a07af3d02620bf68627bc09c076))

## [1.18.1](https://github.com/mesosphere/konvoy-image-builder/compare/v1.18.0...v1.18.1) (2022-06-16)


### Bug Fixes

* use the same instance-type as konvoy ([#393](https://github.com/mesosphere/konvoy-image-builder/issues/393)) ([73abc28](https://github.com/mesosphere/konvoy-image-builder/commit/73abc281daa1fa7f00181282f266c853d060b3b4))

## [1.18.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.17.2...v1.18.0) (2022-06-15)


### Features

* bump versions of k8s to 1.23.7 ([350a016](https://github.com/mesosphere/konvoy-image-builder/commit/350a0167f1ddcaf484f537b6442e608ab9461d73))

## [1.17.2](https://github.com/mesosphere/konvoy-image-builder/compare/v1.17.1...v1.17.2) (2022-06-08)


### Bug Fixes

* upload command flag ([cb31f33](https://github.com/mesosphere/konvoy-image-builder/commit/cb31f330589927fa1e791547dd33d83926286a7f))

## [1.17.1](https://github.com/mesosphere/konvoy-image-builder/compare/v1.17.0...v1.17.1) (2022-06-08)


### Bug Fixes

* fixes an SSH error ([a7a2d62](https://github.com/mesosphere/konvoy-image-builder/commit/a7a2d6237953b59fd7b85247ca65ca40d465c04f))
* missing ansible.utils collection ([d982a8d](https://github.com/mesosphere/konvoy-image-builder/commit/d982a8da7487be273917851ab74f41c77a4bf9fe))

## [1.17.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.16.1...v1.17.0) (2022-06-02)


### Features

* allow ubuntu image creation on gcp ([#374](https://github.com/mesosphere/konvoy-image-builder/issues/374)) ([edf8fd4](https://github.com/mesosphere/konvoy-image-builder/commit/edf8fd41cf485f8346c031d8d1c0ec8001723027))
* install googlecompute packer plugin ([#373](https://github.com/mesosphere/konvoy-image-builder/issues/373)) ([fc626af](https://github.com/mesosphere/konvoy-image-builder/commit/fc626af3a45fc95745a2d0ac44271aef45e712e6))

### [1.16.1](https://github.com/mesosphere/konvoy-image-builder/compare/v1.16.0...v1.16.1) (2022-06-01)


### Bug Fixes

* Parse command output without using shell pipelines ([#369](https://github.com/mesosphere/konvoy-image-builder/issues/369)) ([f7b9d3e](https://github.com/mesosphere/konvoy-image-builder/commit/f7b9d3ef8531969cd4df4ae6274bf2d811116266))

## [1.16.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.15.0...v1.16.0) (2022-06-01)


### Features

* create centos images for gcp  ([#350](https://github.com/mesosphere/konvoy-image-builder/issues/350)) ([1229047](https://github.com/mesosphere/konvoy-image-builder/commit/12290478cdfca66ec03d39e7284c0735645f4aa8))


### Bug Fixes

* correctly set default pause image ([#367](https://github.com/mesosphere/konvoy-image-builder/issues/367)) ([164d03a](https://github.com/mesosphere/konvoy-image-builder/commit/164d03a4eaf5790897680cfbfa4ee6711d12ec0e))
* set token param correctly ([#361](https://github.com/mesosphere/konvoy-image-builder/issues/361)) ([70d7200](https://github.com/mesosphere/konvoy-image-builder/commit/70d720014a657b373c5351271d02524e4b85f284))

## [1.15.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.14.0...v1.15.0) (2022-05-27)


### Features

* Download containerd from packages.d2iq.com ([1388af9](https://github.com/mesosphere/konvoy-image-builder/commit/1388af9f47e1e09b8ce1360dc39d61907ba2f273))
* dynamic containerd install per OS ([#355](https://github.com/mesosphere/konvoy-image-builder/issues/355)) ([fad6da0](https://github.com/mesosphere/konvoy-image-builder/commit/fad6da0af6f19d0c61558b44ca1e877109462436))


### Bug Fixes

* change build name for rhel7 azure ([fc86874](https://github.com/mesosphere/konvoy-image-builder/commit/fc86874b326a235ec3f178a78341b53704c77c64))
* make non eus repos logic generic ([58dafd6](https://github.com/mesosphere/konvoy-image-builder/commit/58dafd62708f4249def11ecd733c2f5b79d0c201))
* On SUSE, remove containerd.io package irrespective of version ([9261e85](https://github.com/mesosphere/konvoy-image-builder/commit/9261e8592b280d8322509db3cf2fca77523a22e9))
* remove major version 7 specific code ([8e79910](https://github.com/mesosphere/konvoy-image-builder/commit/8e799101d335370a12212b8f4ac3565d9eb2f04f))
* remove release ver ([9276b1f](https://github.com/mesosphere/konvoy-image-builder/commit/9276b1f82f2f8c09f470f3beee75fd93ec5e1400))
* rhel 8.4 SKU for azure ([cee86a1](https://github.com/mesosphere/konvoy-image-builder/commit/cee86a1f26f5ae5e00ea6e7cb822665f1e8f16ee))
* set different non-eus repos for different versions ([92f25e7](https://github.com/mesosphere/konvoy-image-builder/commit/92f25e7c73f74683d682c6ed83122e4b194a30ab))
* set outputs from release please ([#351](https://github.com/mesosphere/konvoy-image-builder/issues/351)) ([65dce6f](https://github.com/mesosphere/konvoy-image-builder/commit/65dce6f1271198d4c45f8004f8b89e0dc478bcfc))
* try installing epel modular for azure ([6276cb8](https://github.com/mesosphere/konvoy-image-builder/commit/6276cb8be7244276464f2dc95381139e80789760))
* try it another way ([0e200f4](https://github.com/mesosphere/konvoy-image-builder/commit/0e200f46ca8735d0e03f351fffd3fcb56878f5c4))
* use different build name ([4dd6304](https://github.com/mesosphere/konvoy-image-builder/commit/4dd6304a542081d22deaf7760acf8d46c07dad42))
* use different build name to avoid conflict ([e00317d](https://github.com/mesosphere/konvoy-image-builder/commit/e00317ddab4ca19ec1c29870302c700cf5c62a0a))

## [1.14.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.13.2...v1.14.0) (2022-05-20)


### Features

* **gpu:** add image tags ([0013788](https://github.com/mesosphere/konvoy-image-builder/commit/001378809917a73b795e6c83f7bef789201f1811))


### Bug Fixes

* remove extra "release"  keyword from vsphere template name ([#336](https://github.com/mesosphere/konvoy-image-builder/issues/336)) ([a14f6ef](https://github.com/mesosphere/konvoy-image-builder/commit/a14f6ef6e4e1f2f9306f9138f947c281979b27ab))

### [1.13.2](https://github.com/mesosphere/konvoy-image-builder/compare/v1.13.1...v1.13.2) (2022-05-11)


### Bug Fixes

* README remove old  test status ([67102d1](https://github.com/mesosphere/konvoy-image-builder/commit/67102d10fed6449af281b5b8474d27ff5023b63f))

### [1.13.1](https://github.com/mesosphere/konvoy-image-builder/compare/v1.13.0...v1.13.1) (2022-05-11)


### Bug Fixes

* adds a v1 ([ac6e72f](https://github.com/mesosphere/konvoy-image-builder/commit/ac6e72fb197e73050f56b941a1f850dfe5338f0a))

## [1.13.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.12.0...v1.13.0) (2022-05-09)


### Features

* **azure:** add azure `--instance-type` ([f5e1940](https://github.com/mesosphere/konvoy-image-builder/commit/f5e1940cfd776c5cab3c660af1c28ac17af681b3))


### Bug Fixes

* **aws:** deprecate `--aws-instance-type` ([e0dcc56](https://github.com/mesosphere/konvoy-image-builder/commit/e0dcc561e0286db15ac480f55e8a3291e6e5f544))
* **azure:** append build name to image sku ([#326](https://github.com/mesosphere/konvoy-image-builder/issues/326)) ([b921f42](https://github.com/mesosphere/konvoy-image-builder/commit/b921f42a9df41a721d3a571a03a2c3c3d961d4ec))
* **azure:** fix rhel 8 build name ([9e8ec95](https://github.com/mesosphere/konvoy-image-builder/commit/9e8ec952b789bb7ceb4c469c5a1b3512402d640c))

## [1.12.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.11.0...v1.12.0) (2022-04-14)


### Features

* use containerd with flatcar ([#300](https://github.com/mesosphere/konvoy-image-builder/issues/300)) ([b96f8bc](https://github.com/mesosphere/konvoy-image-builder/commit/b96f8bc65fa63cd047fe8d2ae1802005e2fe37c4))


### Bug Fixes

* **flatcar:** fix no update settings ([#308](https://github.com/mesosphere/konvoy-image-builder/issues/308)) ([03a618c](https://github.com/mesosphere/konvoy-image-builder/commit/03a618cf8b4901fbcf66572185c55ea77094cc16))
* use bastion in offline fips ova rhel builds ([#307](https://github.com/mesosphere/konvoy-image-builder/issues/307)) ([8d3e338](https://github.com/mesosphere/konvoy-image-builder/commit/8d3e3387779df6117e65ed98783ae1bc1194a69d))

## [1.11.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.10.0...v1.11.0) (2022-04-07)


### Features

* **azure:** support flatcar images ([6773d1c](https://github.com/mesosphere/konvoy-image-builder/commit/6773d1cf609eb6f3a6e20ef538d38b67665128b7))
* **azure:** support oracle images ([c11780a](https://github.com/mesosphere/konvoy-image-builder/commit/c11780a1d9fa48089bbb8f35b483a1a9202f2612))
* **azure:** support rhel images ([cdef472](https://github.com/mesosphere/konvoy-image-builder/commit/cdef4724278ce6e7860ca431d699c07cd9d565da))
* **azure:** support sles images ([49a7745](https://github.com/mesosphere/konvoy-image-builder/commit/49a774523ebaab6b7a26a229330f9dea5173b7b3))


### Bug Fixes

* support flatcar 3033.2.0 ([#299](https://github.com/mesosphere/konvoy-image-builder/issues/299)) ([43bdfd2](https://github.com/mesosphere/konvoy-image-builder/commit/43bdfd27298414130c4b3703636377c2c64fd8c7))

## [1.10.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.9.1...v1.10.0) (2022-03-31)


### Features

* **azure:** support ubuntu images ([91dac7f](https://github.com/mesosphere/konvoy-image-builder/commit/91dac7ffc7edf6251898c96143b11a2406b34f3d))


### Bug Fixes

* cleanup vsphere VM when building vSphere template in dry run ([#283](https://github.com/mesosphere/konvoy-image-builder/issues/283)) ([44b1a94](https://github.com/mesosphere/konvoy-image-builder/commit/44b1a9423b34ab444d095834a4537fafe7ca10ea))
* fixes version lock to set fact ([ebaba83](https://github.com/mesosphere/konvoy-image-builder/commit/ebaba83028e79adf8fb295b26961a18a15e9be50))
* hardcode v3.4.x etcd version ([8d9c8e9](https://github.com/mesosphere/konvoy-image-builder/commit/8d9c8e924906cf55ddbab161b410fe60eee0d804))
* makefile targets for NVIDIA GPU support ([#285](https://github.com/mesosphere/konvoy-image-builder/issues/285)) ([b56c5af](https://github.com/mesosphere/konvoy-image-builder/commit/b56c5afd51bad97844112854521a6aae8d7ff305))
* **packer:** fix spacing typo in packer template ([92fa950](https://github.com/mesosphere/konvoy-image-builder/commit/92fa950a29d8694dfd83e1817b643cc4c23095f0))

### [1.9.1](https://github.com/mesosphere/konvoy-image-builder/compare/v1.9.0...v1.9.1) (2022-03-24)


### Bug Fixes

* ova packer template ([ebcd1da](https://github.com/mesosphere/konvoy-image-builder/commit/ebcd1da234e4fd8d7a13030b4b49b77ee74a093b))

## [1.9.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.8.0...v1.9.0) (2022-03-24)


### Features

* bump k8s to 1.22.4 ([d36a81d](https://github.com/mesosphere/konvoy-image-builder/commit/d36a81dd2646e72e247ecca1aedf336bd449cb95))
* bump kubernetes to 1.22.8 and use the new automated repos ([809bbd9](https://github.com/mesosphere/konvoy-image-builder/commit/809bbd9baf29df21e44512444da3795a8195cca6))
* support azure ([#230](https://github.com/mesosphere/konvoy-image-builder/issues/230)) ([016481a](https://github.com/mesosphere/konvoy-image-builder/commit/016481af838a878dcbfa7e7f94c5be958e35364d))


### Bug Fixes

* **ansible:** allow rsa public keys ([#271](https://github.com/mesosphere/konvoy-image-builder/issues/271)) ([291e922](https://github.com/mesosphere/konvoy-image-builder/commit/291e9220b843560e7c905b48dd0c1b63ca8a7ab2))
* go-mod tidy ([7ccfaa7](https://github.com/mesosphere/konvoy-image-builder/commit/7ccfaa77ee44e2ef775c8c4f2c52390fdfa57eb8))
* **lint:** don't lint CHANGELOG.md ([b8401b2](https://github.com/mesosphere/konvoy-image-builder/commit/b8401b2b00d1751da70a60789daf87613c611014))
* remove note to add promotion job ([d9cd670](https://github.com/mesosphere/konvoy-image-builder/commit/d9cd6705fe0ef14eeff9bb3d6a29c7bd4d54ca03))

## [1.8.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.7.0...v1.8.0) (2022-03-17)


### Features

* allow user to run ssh communicator through bastion ([#251](https://github.com/mesosphere/konvoy-image-builder/issues/251)) ([84e9674](https://github.com/mesosphere/konvoy-image-builder/commit/84e967431ac9b1dc8b7563536006c8b15e574562))
* bulild vsphere template in air gapped environment ([#246](https://github.com/mesosphere/konvoy-image-builder/issues/246)) ([5a2c62f](https://github.com/mesosphere/konvoy-image-builder/commit/5a2c62f95a0293a20dda1ebfd78f7c5fcbb4915e))
* create vsphere template image for RedHat 8.4 and 7.9 ([#239](https://github.com/mesosphere/konvoy-image-builder/issues/239)) ([b5e7abe](https://github.com/mesosphere/konvoy-image-builder/commit/b5e7abe50acf824e7244a8fb63440164b8ec03ac))


### Bug Fixes

* **app:** remove unused `gen.go` ([8bf34b3](https://github.com/mesosphere/konvoy-image-builder/commit/8bf34b35eb56e30f6226b3092bed9a5db20fba53))
* **cmd:** add subcommads to `build` and `generate` ([4fb3798](https://github.com/mesosphere/konvoy-image-builder/commit/4fb3798804ca403ae547566046a7052f6dfacdf9))
* **lint:** fix markdown rules ([b052bff](https://github.com/mesosphere/konvoy-image-builder/commit/b052bff48bd215d032c364518b94d54015e0d617))
* **lint:** fix textlint rules ([731e192](https://github.com/mesosphere/konvoy-image-builder/commit/731e192937f5761da0d1fda01d9b8b3f76c2cf9f))
* move goreleaser to where it really is ([82992d5](https://github.com/mesosphere/konvoy-image-builder/commit/82992d53d1c1b5a75baa15f5d14120000e58b706))
* **pkg:** remove unused `config` package ([1c6509a](https://github.com/mesosphere/konvoy-image-builder/commit/1c6509a97fe057b93b2d6414bb6b303df44adaea))
* use crictl to pull images and supports mirrors ([#252](https://github.com/mesosphere/konvoy-image-builder/issues/252)) ([f14f841](https://github.com/mesosphere/konvoy-image-builder/commit/f14f841c5d325d9677349c18f5e717109e661e7f))

## [1.7.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.6.0...v1.7.0) (2022-02-14)


### Features

* use published os-packages-bundles ([680d56e](https://github.com/mesosphere/konvoy-image-builder/commit/680d56e9035980b47a40fc3a532c443d71db173e))


### Bug Fixes

* create systemd drop-in to disable NetworkManager-cloud-setup service ([2f6011a](https://github.com/mesosphere/konvoy-image-builder/commit/2f6011aeef8770802c5fd5db7ccb18fdda3ae1c2))
* disable nm-cloud-setup only for AWS provider ([9da50ce](https://github.com/mesosphere/konvoy-image-builder/commit/9da50ce65525199efdf33e647f81751484fb1968))
* linting errors in changelog ([4eb2f96](https://github.com/mesosphere/konvoy-image-builder/commit/4eb2f9613953743b4bb007f97ccdd81bc6acee64))
* **release:** run goreleaser on release publish ([f1218a1](https://github.com/mesosphere/konvoy-image-builder/commit/f1218a13167678c7e49ebc71347eb9f4f7f869a9))

## [1.6.0](https://github.com/mesosphere/konvoy-image-builder/compare/v1.5.0...v1.6.0) (2022-02-08)


### Features

* Add "dry run" build mode ([#228](https://github.com/mesosphere/konvoy-image-builder/issues/228)) ([e56fdea](https://github.com/mesosphere/konvoy-image-builder/commit/e56fdea37b217cb4c218ddd366fbe6bb6a203879))
* adds an upload artifacts command to konvoy image builder ([#214](https://github.com/mesosphere/konvoy-image-builder/issues/214)) ([9ed1806](https://github.com/mesosphere/konvoy-image-builder/commit/9ed18066608bf2570ce4ed76b5559d82ade78e93))
* convert centos 7 minimal iso to docker image ([#195](https://github.com/mesosphere/konvoy-image-builder/issues/195)) ([b8ecfc5](https://github.com/mesosphere/konvoy-image-builder/commit/b8ecfc57bf0444471e8882ebf27e8e6df6f981bb))
* create RHEL 8.2 and RHEL 8.4 fips image for air-gapped installations ([#208](https://github.com/mesosphere/konvoy-image-builder/issues/208)) ([51af272](https://github.com/mesosphere/konvoy-image-builder/commit/51af272d1c039c564551dbe7f70218629a426edf))
* gather images dynamically ([3fe415f](https://github.com/mesosphere/konvoy-image-builder/commit/3fe415f0b6fa176c4b9baa0f363303b867f08ff3))
* rhel82 FIPS ([#200](https://github.com/mesosphere/konvoy-image-builder/issues/200)) ([1688a02](https://github.com/mesosphere/konvoy-image-builder/commit/1688a028fc8a350eb04c3bd1355f40c06b90a2f4))


### Bug Fixes

* add testify to go.mod ([91c38d5](https://github.com/mesosphere/konvoy-image-builder/commit/91c38d500238fae2f996e6164bf65e5505986587))
* Allow user to provide a subset of registry configuration fields ([3571d3a](https://github.com/mesosphere/konvoy-image-builder/commit/3571d3ade91131fe9cbd439788500d733a1a1613))
* allows users to set kubernetes version through flag in build command ([04681f1](https://github.com/mesosphere/konvoy-image-builder/commit/04681f120d929103253e8efd02f03ada63311f3a))
* **ansible:** reuse roles for image saving ([e298986](https://github.com/mesosphere/konvoy-image-builder/commit/e298986a6c16e6b2ba82619bab46045346a9f097))
* configure NetworkManager to prevent interfering with interfaces ([#231](https://github.com/mesosphere/konvoy-image-builder/issues/231)) ([36de19f](https://github.com/mesosphere/konvoy-image-builder/commit/36de19f3ec5b6401240d5ee0082ae59b3efacc2c))
* have extra-vars work ([a9b962b](https://github.com/mesosphere/konvoy-image-builder/commit/a9b962ba6071d68e2b45f22b43b68de1a47581ff))
* lint errors ([46a6b19](https://github.com/mesosphere/konvoy-image-builder/commit/46a6b195ca8528b19fa171e21f739d1f5cc8e951))
* **os-packages:** prevent clean error ([cda2e50](https://github.com/mesosphere/konvoy-image-builder/commit/cda2e50d6b4da98d15209168b19791bb3e44cd1a))
* **os-packages:** set defaults for targets ([3bfc439](https://github.com/mesosphere/konvoy-image-builder/commit/3bfc439a2daf17baae37fe364a1d48c5588c574c))
* remove execute bits from playbook ([8a44a81](https://github.com/mesosphere/konvoy-image-builder/commit/8a44a8127ee6911f3976d22ef146de6a46508bf9))
* remove unused 'global' playbook ([a3356c0](https://github.com/mesosphere/konvoy-image-builder/commit/a3356c0680449d4108c809f1d9f2e3b7e3bea24f))
* remove unused 'images' group vars ([31eb405](https://github.com/mesosphere/konvoy-image-builder/commit/31eb4058eb4c9d278bbaecd7f6578722ad4799a1))
* replace broken centos 8 appstream repository with alma linux repository ([#227](https://github.com/mesosphere/konvoy-image-builder/issues/227)) ([ada2ca9](https://github.com/mesosphere/konvoy-image-builder/commit/ada2ca94bfd842526a4af9878a1b67ff80e2afa3))
* set the correct KIB version ami tag ([d92dd74](https://github.com/mesosphere/konvoy-image-builder/commit/d92dd744a92edcd8b3d0aae10a0cba44d78b5dd0))
