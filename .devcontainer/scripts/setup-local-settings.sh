#! /bin/bash
set -e

WORKFLOW_TEMPLATE_SETTINGS="./source/workflow-designtime/local.template.settings.json"
WORKFLOW_LOCAL_SETTINGS="./source/workflow-designtime/local.settings.json"

HOST_TEMPLATE_SETTINGS="./source/local.template.settings.json"
HOST_LOCAL_SETTINGS="./source/local.settings.json"

# Check if the file exists
if [ -f "$WORKFLOW_LOCAL_SETTINGS" ]; then
    # If the file exists, do nothing.
    echo "Workflow settings already exist."
else
    # If the file does not exist, copy the template
    cp $HOST_TEMPLATE_SETTINGS $WORKFLOW_LOCAL_SETTINGS
    echo "Copied workflow template settings."
fi


if [ -f $HOST_LOCAL_SETTINGS ]; then
    # If the file exists, do nothing.
    echo "Host local settings already exist."
else
    # If the file does not exist, copy the template
    cp $HOST_TEMPLATE_SETTINGS $HOST_LOCAL_SETTINGS
    echo "Copied local template settings."
fi


chown vscode .azure-functions-core-tools