#! /usr/bin/env bash

set -eo pipefail

# This expects a credential file in your chrome download folder (change `chrome_download_path`)
# It then moves the file into `~/.aws/gui_sts_credentials` and sets your credential file location so AWS CLI reads it
#
# Google Chrome Plugin: https://chrome.google.com/webstore/detail/saml-to-aws-sts-keys-conv/ekniobabpcnfjgfbphhcolcinmnbehde
# Source Code: https://github.com/prolane/samltoawsstskeys
#
#
# Setup:
# 1. Install chrome plugin
# 2. Download this script and place it somewhere in your `$PATH` such as `~/bin/aws-import-credentials.sh`
# 3. Update `chrome_download_path` to point to your chrome download folder
#
# Run this script using:
# 1. `eval $(aws-import-credentials.sh)`
#
# For convenience: Create a bash function for this (add the following to your `.bash_profile`)
# ```
# function awsup()
# {
#     eval $(aws_import_creds.sh)
# }
# ```

chrome_download_path="${HOME}/Desktop"

# Location the file is downloaded to
plugin_download_file="${chrome_download_path}/credentials"

# Temp credential file
target_cred_file="${HOME}/.aws/aws_sts_credentials"
cred_file_export=""

echoerr() { echo "$@" 1>&2; }

check_signin() {
    unset AWS_ACCESS_KEY_ID;
    unset AWS_SECRET_ACCESS_KEY;
    export AWS_SHARED_CREDENTIALS_FILE="${1}"

    local account_name
    local account_id
    local aws_user

    account_name=$(aws iam list-account-aliases --output text --query 'AccountAliases[0]' 2>/dev/null || true)

    if [ -z "${account_name}" ] ; then
        exit 0
    fi

    account_id=$(aws sts get-caller-identity --output text --query 'Account' 2>/dev/null || true)
    aws_user=$(aws sts get-caller-identity --output text --query 'Arn' 2>/dev/null || true)

    echo "Signed in to \"${account_name} (${account_id})\" as \"${aws_user}\""
}

if [ -f "${plugin_download_file}" ] ; then
    echoerr "New credential file found: \"${plugin_download_file}\""
    echoerr "Moving to \"${target_cred_file}\""

    mv "${plugin_download_file}" "${target_cred_file}"
    cred_file_export='export AWS_SHARED_CREDENTIALS_FILE="'${target_cred_file}'"'

    # Double check that the current credentials are still valid
    signedin=$(check_signin "${target_cred_file}")
    echoerr "${signedin}"
    echoerr

else
    echoerr "No new credential file found: \"${plugin_download_file}\""

    # Double check that the current credentials are still valid
    signedin=$(check_signin "${target_cred_file}")

    if [ -n "${signedin}" ] ; then
        cred_file_export='export AWS_SHARED_CREDENTIALS_FILE="'${target_cred_file}'"'
        echoerr "${signedin}"
        echoerr
    else
        echoerr "Resetting back to defaults"
        echoerr

        if [ -f "${target_cred_file}" ] ; then
            rm "${target_cred_file}"
        fi

        cred_file_export='unset AWS_SHARED_CREDENTIALS_FILE'
    fi
fi

echo '
unset AWS_ACCESS_KEY_ID ;
unset AWS_SECRET_ACCESS_KEY ;
'${cred_file_export}'
'
