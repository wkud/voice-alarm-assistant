# voice_assistant_app

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
> "Hey Henry, turn on lights in the kitchen"

Wake word: "Hey Henry" \
Voice command:  "turn on lights in the kitchen" \
Intent:
```json
{
   "intent": "switchLights",
   "slots":
   {
      "state": "on",
      "room": "kitchen"
   }
}
```
API processing result: 
> lights in the kitchen are turned on

## Creating env files
1. Go into main flutter project directory
2. Run `cp ./env/dev.example.json ./env/dev.json`
3. Modify any values in `env/dev.json` file (if needed)
   1. Make sure to provide PicovoiceAccessKey

**Note:** For production environment use `cp ./env/prod.example.json ./env/prod.json`  

## (Re)generating API consumer logic
1. Go into main flutter project directory
2. Run `dart run build_runner build --delete-conflicting-outputs` to generate api consumer code
    - Note: the parameters of generated code can be configured in `{main_flutter_project_root}/lib/code_gen_config/api_config.dart`
3. Run `flutter pub get` to update main project's dependency to the child project

## Running
- dev env 
`flutter run --dart-define-from-file=env/dev.json`

- prod env
`flutter run --dart-define-from-file=env/prod.json`