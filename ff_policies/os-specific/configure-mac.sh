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

echo "Confirm if you have Flash installed:"
select yn in "Unsure" "Yes" "No"; do
    case $yn in
        Unsure ) echo "Visit https://helpx.adobe.com/in/flash-player.html"; exit;;
        Yes ) break;;
		No ) exit;;
    esac
done

POLICY_FILE_NAME="./resources/policies.json"
POLICY_PATH="${FF_INSTALL_PATH}/Contents/Resources/distribution"

echo "*** Required root privledges ***"

sudo rm -rf "${POLICY_PATH}"
sudo mkdir -p "$POLICY_PATH"
sudo cp "./${POLICY_FILE_NAME}" "${POLICY_PATH}"

echo "Policies successfully applied to Firefox"