# Logic Apps Standard - Starter Dev Container

You can use this dev container as a starter point for your Function and Logic apps development. It contains suggested configuration and extensions.

## Running locally

Simply choose the option to `Reopen in Container` when prompted by the Dev Containers extension, or use the `Dev Containers: Reopen in Container` command from the command bar.

> NOTE
>
> Make sure to start the local Azurite storage emulator by clicking `[Azurite Blob Service]` on the status bar once the project is open in the dev container.

Please be sure to set the `AzureWebJobsStorage` application setting in the root-level local.setting.json file.  The value can be either your Azure storage account or the local Azurite emulator.  The example below uses the local emulator.

```json
{
  "IsEncrypted": false,
  "Values": {
    "AzureWebJobsStorage": "UseDevelopmentStorage=true",
    "WORKFLOWS_SUBSCRIPTION_ID": "",
    "FUNCTIONS_WORKER_RUNTIME": "node"
  }
}
```
