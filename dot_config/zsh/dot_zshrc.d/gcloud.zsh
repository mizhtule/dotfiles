#!/usr/bin/env zsh

if [[ -z "${CLOUDSDK_HOME}" ]]; then
  search_locations=(
    "${HOME}/google-cloud-sdk"
    "${HOME}/.local/lib/google-cloud-sdk"
    "/opt/google-cloud-sdk"
  )

  for gcloud_sdk_location in $search_locations; do
    if [[ -d "${gcloud_sdk_location}" ]]; then
      CLOUDSDK_HOME="${gcloud_sdk_location}"
      break
    fi
  done
  unset search_locations gcloud_sdk_location
fi

# Updates PATH for the Google Cloud SDK
if [ -f "${CLOUDSDK_HOME}/path.zsh.inc" ]; then
  source "${CLOUDSDK_HOME}/path.zsh.inc"
fi

(( $+commands[gcloud] )) || return 1

# Enables shell command completion for gcloud
if [ -f "${CLOUDSDK_HOME}/completion.zsh.inc" ]; then
  source "${CLOUDSDK_HOME}/completion.zsh.inc"
fi

export CLOUDSDK_PYTHON_SITEPACKAGES=1
export CLOUDSDK_HOME
