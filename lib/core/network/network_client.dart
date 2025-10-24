import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../constants/api_constants.dart';

/// Network client singleton for making HTTP requests
class NetworkClient {
  static NetworkClient? _instance;
  late Dio _dio;
  final Logger _logger = Logger();

  /// Private constructor
  NetworkClient._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.apiUrl,
        connectTimeout: const Duration(
          milliseconds: ApiConstants.connectionTimeout,
        ),
        receiveTimeout: const Duration(
          milliseconds: ApiConstants.receiveTimeout,
        ),
        sendTimeout: const Duration(milliseconds: ApiConstants.sendTimeout),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Add interceptors
    _dio.interceptors.add(_LoggingInterceptor(_logger));
    _dio.interceptors.add(_ErrorInterceptor());
  }

  /// Get the singleton instance
  static NetworkClient get instance {
    _instance ??= NetworkClient._();
    return _instance!;
  }

  /// Get the Dio instance
  Dio get dio => _dio;

  /// Add authorization header
  void setAuthToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  /// Remove authorization header
  void clearAuthToken() {
    _dio.options.headers.remove('Authorization');
  }
}

/// Custom logging interceptor
class _LoggingInterceptor extends Interceptor {
  final Logger _logger;

  _LoggingInterceptor(this._logger);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.i('REQUEST[${options.method}] => PATH: ${options.path}');
    _logger.d('Headers: ${options.headers}');
    _logger.d('Data: ${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.i(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    _logger.d('Data: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logger.e(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    _logger.e('Message: ${err.message}');
    super.onError(err, handler);
  }
}

/// Custom error interceptor
class _ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle different types of errors
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw TimeoutException('Connection timeout', err);
      case DioExceptionType.badResponse:
        throw ServerException('Server error: ${err.response?.statusCode}', err);
      case DioExceptionType.cancel:
        throw CancellationException('Request cancelled', err);
      case DioExceptionType.connectionError:
        throw NetworkException('Network error', err);
      default:
        throw UnknownException('Unknown error occurred', err);
    }
  }
}

/// Custom network exceptions
class NetworkException implements Exception {
  final String message;
  final DioException? dioException;

  NetworkException(this.message, this.dioException);

  @override
  String toString() => 'NetworkException: $message';
}

class ServerException extends NetworkException {
  ServerException(super.message, super.dioException);
}

class TimeoutException extends NetworkException {
  TimeoutException(super.message, super.dioException);
}

class CancellationException extends NetworkException {
  CancellationException(super.message, super.dioException);
}

class UnknownException extends NetworkException {
  UnknownException(super.message, super.dioException);
}
