class AppConfig {
  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'http://localhost:8080',
  );

  static const String env = String.fromEnvironment(
    'APP_ENV',
    defaultValue: 'dev',
  );

  static const String picovoiceAccessKey = String.fromEnvironment(
    'PICOVOICE_ACCESS_KEY',
    defaultValue: '',
  );

  static bool get isProduction => env == 'production';
}