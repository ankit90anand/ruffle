echo "*** Required root privledges ***"

sudo rm -rf "${POLICY_PATH}"
sudo mkdir -p "$POLICY_PATH"
sudo cp "./${POLICY_FILE_NAME}" "${POLICY_PATH}"

echo "Policies successfully applied to Firefox"