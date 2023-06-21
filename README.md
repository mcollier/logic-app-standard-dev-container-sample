# Logic Apps Standard - Dev Container Sample

## Notes
- Start the local Azurite storage emulator.
- Update your local source/workflow-designtime/local.settings.json file to set the `AzureWebJobsStorage` setting to "UseDevelopmentStorage=true".
    ```json
    {
    "IsEncrypted": false,
    "Values": {
        "AzureWebJobsSecretStorageType": "Files",
        "FUNCTIONS_WORKER_RUNTIME": "node",
        "APP_KIND": "workflowapp",
        "ProjectDirectoryPath": "/workspaces/logic-apps-devcontainer-sample/source/workflow-designtime/",
        "AzureWebJobsStorage": "UseDevelopmentStorage=true"
    }
    }
    ```