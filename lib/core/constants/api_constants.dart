/// API constants for the application
class ApiConstants {
  /// Base URL for the API
  static const String baseUrl = 'https://api.example.com';

  /// API version
  static const String apiVersion = 'v1';

  /// Full API URL
  static const String apiUrl = '$baseUrl/$apiVersion';

  /// Connection timeout in milliseconds
  static const int connectionTimeout = 30000;

  /// Receive timeout in milliseconds
  static const int receiveTimeout = 30000;

  /// Send timeout in milliseconds
  static const int sendTimeout = 30000;

  /// Private constructor
  ApiConstants._();
}
