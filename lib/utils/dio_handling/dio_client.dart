// ignore_for_file: avoid_print, use_rethrow_when_possible

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_error_handling/model/login_response_model.dart';
import 'package:dio_error_handling/utils/dio_handling/print_log.dart';
import 'package:dio_error_handling/utils/user_session.dart';
import 'package:get_storage/get_storage.dart';

const _defaultConnectTimeout = Duration.millisecondsPerMinute;
const _defaultReceiveTimeout = Duration.millisecondsPerMinute;

class DioClient {
  final bool showLog = true; // Show || Hide semua log
  final bool showLogResponse = true; // Show || Hide khusus log RESPONSE
  final bool showLogHeader = true; // Show || Hide khusus log HEADER
  final bool showLogPayload = true; // Show || Hide khusus log PAYLOAD

  final String baseUrl;

  late Dio _dio;

  final List<Interceptor>? interceptors;

  final data = GetStorage().read(LOCAL);

  DioClient(this.baseUrl, Dio dio, {this.interceptors}) {
    var optionsHeaders = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Charset': 'utf-8',
      // 'x-version_app': versiApp
    };
    // Jika aunthenticated
    if (data != null) {
      var accessToken = LoginResponseModel.fromJson(jsonDecode(data));
      var token = accessToken.dataLoginUser!.token;

      optionsHeaders = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Charset': 'utf-8',
        // 'x-version_app': versiApp,
        'Authorization': 'Bearer $token',
      };
    }

    _dio = dio;
    _dio
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = _defaultConnectTimeout.round()
      ..options.receiveTimeout = _defaultReceiveTimeout.round()
      ..httpClientAdapter
      ..options.headers = optionsHeaders;

    if (interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(interceptors!);
    }

    // if (!kReleaseMode) {
    //   _dio.interceptors.add(PrettyDioLogger(
    //       requestHeader: true,
    //       requestBody: true,
    //       responseBody: true,
    //       responseHeader: false,
    //       error: true,
    //       compact: true,
    //       maxWidth: 90),
    //   );
    // }
  }

  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      Printlog.networkGET(
        PrintOn.success,
        "$baseUrl$uri",
        response: response,
        showLog: showLog,
        showLogHeader: showLogHeader,
        showLogPayload: showLogPayload,
        showLogResponse: showLogResponse,
      );

      return response.data;
    } on CancelToken catch (_) {
      Printlog.networkGET(PrintOn.cancelToken, "$baseUrl$uri",
          showLog: showLog);
    } on SocketException catch (e) {
      Printlog.networkGET(PrintOn.socketException, "$baseUrl$uri",
          showLog: showLog);

      throw SocketException(e.toString());
    } on FormatException catch (_) {
      Printlog.networkGET(PrintOn.formatException, "$baseUrl$uri",
          showLog: showLog);

      throw const FormatException("Unable to process the data");
    } catch (e) {
      Printlog.networkGET(PrintOn.onCatch, "$baseUrl$uri",
          showLog: showLog, e: e);

      throw e;
    }
  }

  Future<dynamic> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      Printlog.networkPOST(
        PrintOn.success,
        "$baseUrl$uri",
        response: response,
        showLog: showLog,
        showLogHeader: showLogHeader,
        showLogPayload: showLogPayload,
        showLogResponse: showLogResponse,
      );

      print("${response.data}-----");
      return response.data;
    } on CancelToken catch (_) {
      Printlog.networkPOST(PrintOn.cancelToken, "$baseUrl$uri",
          showLog: showLog);
    } on FormatException catch (_) {
      Printlog.networkPOST(PrintOn.formatException, "$baseUrl$uri",
          showLog: showLog);

      throw const FormatException("Unable to process the data");
    } catch (e) {
      print(e);
      // Printlog.networkPOST(PrintOn.onCatch, "$baseUrl$uri", showLog: showLog, e: e);

      throw e;
    }
  }

  // ------ Gunakan GET dan Post dulu ------ //
  Future<dynamic> patch(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await _dio.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      var response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      throw e;
    }
  }

// ------------------------------------ //
}
