#!/usr/bin/env bash
# -----------------------------------------------------------------------------
set -o errexit
set -o nounset
set -o pipefail

function run() {
    echo " -----------------------------------------------------------------------------"
    echo "Starting ASP.net Web API..."
    echo " -----------------------------------------------------------------------------"

    dotnet asp-net-web-api.dll
}

run