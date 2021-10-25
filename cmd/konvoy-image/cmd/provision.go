package cmd

import (
	log "github.com/sirupsen/logrus"
	"github.com/spf13/cobra"

	"github.com/mesosphere/konvoy-image-builder/pkg/app"
)

var provisionFlags app.ProvisionFlags

var provisionCmd = &cobra.Command{
	Use:     "provision <inventory.yaml|hostname,>",
	Short:   "provision to an inventory.yaml or hostname, note the comma at the end of the hostname",
	Example: "provision --inventory-file inventory.yaml",
	Args:    cobra.NoArgs,
	RunE: func(cmd *cobra.Command, args []string) error {
		provisionFlags.RootFlags = rootFlags
		builder := newBuilder()
		var workDir string
		var err error

		if provisionFlags.WorkDir == "" {
			workDir, err = builder.InitConfig(app.InitOptions{
				CommonConfigPath: app.CommonConfigDefaultPath,
				Image:            app.CommonConfigDefaultPath,
				Overrides:        provisionFlags.Overrides,
				UserArgs: app.UserArgs{
					ClusterArgs: provisionFlags.ClusterArgs,
				},
			})
			if err != nil {
				bail("error rendering builder configuration", err, 2)
			}
		} else {
			workDir = provisionFlags.WorkDir
			log.Printf("using workDir provided by --%s flag: %s", workDirFlagName, workDir)
		}

		return builder.Provision(workDir, provisionFlags)
	},
}

func init() {
	fs := provisionCmd.Flags()
	addClusterArgs(
		fs,
		&provisionFlags.ClusterArgs.KubernetesVersion,
		&provisionFlags.ClusterArgs.ContainerdVersion,
	)
	fs.StringArrayVar(&provisionFlags.ExtraVars, "extra-vars", []string{}, "flag passed Ansible's extra-vars")
	fs.StringVar(&provisionFlags.Provider, "provider", "", "specify a provider if you wish to install provider specific utilities")
	fs.StringVar(&provisionFlags.Inventory, "inventory-file", "", "an ansible inventory defining your infrastructure")
	addOverridesArg(fs, &provisionFlags.Overrides)
	fs.StringVar(&provisionFlags.WorkDir, workDirFlagName, "", "path to custom work directory generated by the generate command")
}
