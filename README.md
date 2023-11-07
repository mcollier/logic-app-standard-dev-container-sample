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

> NOTE
>
> Open the included Logic App workflow in the designer _before_ attempting to debug the Logic App.  Doing so seems to force the Azure Functions extension bundle at **/home/vscode/.azure-functions-core-tools/Functions/ExtensionBundles/Microsoft.Azure.Functions.ExtensionBundle.Workflows** to download.  Failure to do so may result in an error such as **"Error: ENOENT: no such file or directory, scandir '/home/vscode/.azure-functions-core-tools/Functions/ExtensionBundles/Microsoft.Azure.Functions.ExtensionBundle.Workflows'"**
