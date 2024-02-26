import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_error_handling/model/error_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  const factory NetworkExceptions.badRequest(String reason) = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions handleResponse(Response? response) {
    ErrorModel? errorModel;

    try {
      errorModel = ErrorModel.fromJson(response?.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

    int statusCode = response?.statusCode ?? 0;
    switch (statusCode) {
      case 400:
        return NetworkExceptions.badRequest(
            errorModel?.message ?? "Bad Request");
      // return const NetworkExceptions.badRequest("Bad Request");
      case 401:
      case 403:
        return NetworkExceptions.unauthorizedRequest(
            errorModel?.statusMessage ?? "Not found");
      case 404:
        return NetworkExceptions.notFound(errorModel?.message ?? "Not found");
      case 409:
        return const NetworkExceptions.conflict();
      case 408:
        return const NetworkExceptions.requestTimeout();
      case 500:
        return const NetworkExceptions.internalServerError();
      case 503:
        return const NetworkExceptions.serviceUnavailable();
      default:
        var responseCode = statusCode;
        return NetworkExceptions.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioError) {
          print("****ERROR ${error.response}****");
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioErrorType.other:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioErrorType.response:
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response);
              break;
            case DioErrorType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (e) {
        if (kDebugMode) {
          print(e);
        }
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(
      notImplemented: () {
        errorMessage = "Not Implemented";
      },
      requestCancelled: () {
        errorMessage = "Request Cancelled";
      },
      internalServerError: () {
        errorMessage = "Internal Server Error";
      },
      notFound: (String reason) {
        errorMessage = reason;
      },
      serviceUnavailable: () {
        errorMessage = "Service unavailable";
      },
      methodNotAllowed: () {
        errorMessage = "Method Allowed";
      },
      badRequest: (String error) {
        errorMessage = error;
      },
      unauthorizedRequest: (String error) {
        errorMessage = error;
      },
      unexpectedError: () {
        errorMessage = networkExceptions.toString();
      },
      requestTimeout: () {
        errorMessage = "Connection request timeout";
      },
      noInternetConnection: () {
        errorMessage = "No internet connection";
      },
      conflict: () {
        errorMessage = "Error due to a conflict";
      },
      sendTimeout: () {
        errorMessage = "Send timeout in connection with API server";
      },
      unableToProcess: () {
        errorMessage = "Unable to process the data";
      },
      defaultError: (String error) {
        errorMessage = error;
      },
      formatException: () {
        errorMessage = "Unexpected error occurred";
      },
      notAcceptable: () {
        errorMessage = "Not acceptable";
      },
    );
    return errorMessage;
  }

  static int getErrorCode(NetworkExceptions networkExceptions) {
    var errorCode;
    networkExceptions.when(
      notImplemented: () {
        errorCode = 501;
      },
      requestCancelled: () {
        errorCode = 400;
      },
      internalServerError: () {
        errorCode = 500;
      },
      notFound: (String reason) {
        errorCode = 404;
      },
      serviceUnavailable: () {
        errorCode = 503;
      },
      methodNotAllowed: () {
        errorCode = 403;
      },
      badRequest: (String error) {
        errorCode = 400;
      },
      unauthorizedRequest: (String error) {
        errorCode = 401;
      },
      unexpectedError: () {
        errorCode = 400;
      },
      requestTimeout: () {
        errorCode = 408;
      },
      noInternetConnection: () {
        errorCode = 400;
      },
      conflict: () {
        errorCode = 409;
      },
      sendTimeout: () {
        errorCode = 408;
      },
      unableToProcess: () {
        errorCode = 400;
      },
      defaultError: (String error) {
        errorCode = 400;
      },
      formatException: () {
        errorCode = 400;
      },
      notAcceptable: () {
        errorCode = 400;
      },
    );
    return errorCode;
  }
}
