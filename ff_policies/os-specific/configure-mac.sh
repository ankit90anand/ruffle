#!/bin/sh
# This is a comment!

echo "Confirm if you have Firefox installed:"
select yn in "Yes" "No"; do
    case $yn in
    	Yes ) read -e  -p "Enter Firefox install path:" FF_INSTALL_PATH;
break;;
        No ) echo "Visit https://www.mozilla.org/en-US/firefox/new/"; exit;;
    esac
done

source "modules/isFlashInstalled.sh"

POLICY_FILE_NAME="./resources/policies.json"
POLICY_PATH="${FF_INSTALL_PATH}/Contents/Resources/distribution"

source "modules/copyPolicies.sh"