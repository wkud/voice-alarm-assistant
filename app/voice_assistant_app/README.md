# voice_assistant_app

A new Flutter project.

## Creating env files
1. Go into main flutter project directory
2. Run `cp ./env/dev.example.json ./env/dev.json`
3. Modify any values in `env/dev.json` file (if needed)

## (Re)generating API consumer logic
1. Go into main flutter project directory
2. Run `dart run build_runner build --delete-conflicting-outputs` to generate api consumer code
    - Note: the parameters of generated code can be configured in `{main_flutter_project_root}/lib/api_config.dart`
3. Run `flutter pub get` to update main project's dependency to the child project

## Running
- dev env 
`flutter run --dart-define-from-file=env/dev.json`

- prod env
`flutter run --dart-define-from-file=env/prod.json`