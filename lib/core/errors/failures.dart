/// Base class for all failures in the application
abstract class Failure {
  /// The error message
  final String message;

  /// The error code (optional)
  final String? code;

  /// Creates a new [Failure] instance
  const Failure({required this.message, this.code});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Failure && other.message == message && other.code == code;
  }

  @override
  int get hashCode => message.hashCode ^ code.hashCode;

  @override
  String toString() =>
      'Failure: $message${code != null ? ' (Code: $code)' : ''}';
}

/// Failure related to server issues
class ServerFailure extends Failure {
  const ServerFailure({required super.message, super.code});
}

/// Failure related to cache issues
class CacheFailure extends Failure {
  const CacheFailure({required super.message, super.code});
}

/// Failure related to network connectivity
class NetworkFailure extends Failure {
  const NetworkFailure({required super.message, super.code});
}

/// Failure related to validation
class ValidationFailure extends Failure {
  const ValidationFailure({required super.message, super.code});
}

/// Failure for unexpected errors
class UnknownFailure extends Failure {
  const UnknownFailure({required super.message, super.code});
}

/// Failure related to authentication
class AuthFailure extends Failure {
  const AuthFailure({required super.message, super.code});
}

/// Failure related to permissions
class PermissionFailure extends Failure {
  const PermissionFailure({required super.message, super.code});
}
