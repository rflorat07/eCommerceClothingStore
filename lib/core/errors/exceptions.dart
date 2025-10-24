/// Custom exceptions for the application
class AppException implements Exception {
  /// The error message
  final String message;

  /// The error code (optional)
  final String? code;

  /// Creates a new [AppException] instance
  const AppException({required this.message, this.code});

  @override
  String toString() =>
      'AppException: $message${code != null ? ' (Code: $code)' : ''}';
}

/// Exception for server-related errors
class ServerException extends AppException {
  const ServerException({required super.message, super.code});
}

/// Exception for cache-related errors
class CacheException extends AppException {
  const CacheException({required super.message, super.code});
}

/// Exception for network-related errors
class NetworkException extends AppException {
  const NetworkException({required super.message, super.code});
}

/// Exception for validation errors
class ValidationException extends AppException {
  const ValidationException({required super.message, super.code});
}

/// Exception for authentication errors
class AuthException extends AppException {
  const AuthException({required super.message, super.code});
}

/// Exception for permission errors
class PermissionException extends AppException {
  const PermissionException({required super.message, super.code});
}
