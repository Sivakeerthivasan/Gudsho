// lib/config/environment.dart
enum Environment { dev, staging, prod }

class EnvironmentConfig {
  final String apiUrl;
  final String apiKey;

  EnvironmentConfig({
    required this.apiUrl,
    required this.apiKey,
  });

  static late EnvironmentConfig _instance;

  static void initialize(Environment env) {
    switch (env) {
      case Environment.dev:
        _instance = EnvironmentConfig(
          apiUrl: 'https://api-vm.gudsho.com',
          apiKey: 'dev-api-key',
        );
        break;
      case Environment.staging:
        _instance = EnvironmentConfig(
          apiUrl: 'https://staging-api.example.com',
          apiKey: 'staging-api-key',
        );
        break;
      case Environment.prod:
        _instance = EnvironmentConfig(
          apiUrl: 'https://api.example.com',
          apiKey: 'prod-api-key',
        );
        break;
    }
  }

  static EnvironmentConfig get instance => _instance;
}
