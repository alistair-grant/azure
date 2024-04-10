# Infrastructure

## Prerequisites

1. [Install the Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli)

1. Open a new terminal session.

1. Check the Azure CLI version:
   ```pwsh
   az --version
   ```

## Deploy Resources

1. Log in to your account:
   ```pwsh
   az login
   ```

1. Set the subscription to deploy to:
   ```pwsh
   az account set --subscription <name or id>
   ```

1. Preview the changes:
   ```pwsh
   az deployment sub what-if --location AustraliaEast --parameters main.bicepparam
   ```
   (Optionally use the `--subscription` argument here rather than setting the subscription for the session in the previous step.)

1. Deploy the changes:
   ```pwsh
   az deployment sub create --location AustraliaEast --parameters main.bicepparam
   ```