# voice-alarm-assistant

A flutter project targetting Android platform. 

## Functionality
1. Initiate 'wake word' detection using foreground service (aka permanent notification)
2. On 'wake word' being said, initiate other app components:
   1. Intent detection based on further words being said
   2. Mapping intent to command
   3. Send command to backend API
   4. Further command processing in the backend

### Usage
Say for example:
> "Hey Henry, ustaw budzik na 9:00"

Wake word: "Hey Henry" \
Voice command:  "ustaw budzik na 9:00" \
Intent:
```json
{
   "intent": "setAlarm",
   "slots":
   {
      "hours": "9",
      "minutes": "00"
   }
}
```
Result: native android alarm app is used to set a new alarm on `9:00`

## Creating env files
1. Go into main flutter project directory
2. Run `cp ./env/dev.example.json ./env/dev.json`
3. Modify any values in `env/dev.json` file (if needed)
   1. Make sure to provide PicovoiceAccessKey

**Note:** For production environment use `cp ./env/prod.example.json ./env/prod.json`  
