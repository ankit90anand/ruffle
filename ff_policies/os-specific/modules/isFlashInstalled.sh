echo "Confirm if you have Flash installed:"
select yn in "Unsure" "Yes" "No"; do
    case $yn in
        Unsure ) echo "Visit https://helpx.adobe.com/in/flash-player.html"; exit;;
        Yes ) break;;
		No ) exit;;
    esac
done
