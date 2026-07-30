class AppConfig {
  static const String baseUrl = String.fromEnvironment(
    'INTENT_RECORDING_IN_SECONDS',
    defaultValue: 'http://localhost:8080',
  );

  static const String env = String.fromEnvironment(
    'APP_ENV',
    defaultValue: 'dev',
  );

  static bool get isProduction => env == 'production';
}