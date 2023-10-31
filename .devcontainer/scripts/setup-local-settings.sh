#! /bin/bash
set -e


cp ./source/workflow-designtime/starter.settings.json ./source/workflow-designtime/local.settings.json

cp ./source/starter.settings.json ./source/local.settings.json

chown vscode .azure-functions-core-tools