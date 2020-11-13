* Policies will be stored at

	[MAC]
	/Applications/Firefox.app/Contents/Resources/distribution

	[WIN]
	(where the EXE is located)/distribution

	[LIN]
	/etc/firefox/policies

* What are the policies you are enforcing 
	{
	  "policies": {
	    "DisableAppUpdate": true,
	    "FlashPlugin": {
	      "Default": true,
	      "Locked": true
	    }
	  }
	}

* Can be overridden by users.	
	Yes, we should restrict write access to policies.json.

* Can we safe Flash plugin in case OS deletes it after 2020?
	User, show download installer for flash and execute it in case it get accidently uninstalled.

* Suppressing EOL Uninstall Prompts by Adobe
https://www.adobe.com/content/dam/acom/en/devnet/flashplayer/articles/flash_player_admin_guide/pdf/latest/flash_player_32_0_admin_guide.pdf
