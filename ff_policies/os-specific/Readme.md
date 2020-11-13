* Policies will be stored at
  * [MAC] : /Applications/Firefox.app/Contents/Resources/distribution
  * [WIN] : (where the EXE is located)/distribution
  * [LIN] : /etc/firefox/policies

* What are the policies you are enforcing 
```json
{
  "policies": {
    "DisableAppUpdate": true,
    "FlashPlugin": {
      "Default": true,
      "Locked": true
    }
  }
}
```

* Why do we need Root privledges?	
 To restrict write access to policies.json.
