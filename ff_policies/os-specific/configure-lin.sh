#!/bin/sh
# This is a comment!

echo "Confirm if you have Firefox installed:"
select yn in "Yes" "No"; do
    case $yn in
    	Yes ) break;;
        No ) echo "Visit https://www.mozilla.org/en-US/firefox/new/"; exit;;
    esac
done

source "modules/isFlashInstalled.sh"

POLICY_FILE_NAME="./resources/policies.json"
POLICY_PATH="/etc/firefox/policies"

source "modules/copyPolicies.sh"