// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

enum PrintOn { success, cancelToken, socketException, formatException, onCatch }

var logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 0,
    lineLength: 60,
    colors: true,
    printEmojis: true,
    printTime: false,
    stackTraceBeginIndex: 20,
  ),
);

class Printlog {
  static networkGET(
    PrintOn printOn,
    String url, {
    Response<dynamic>? response,
    bool showLog = false,
    bool showLogResponse = false,
    bool showLogHeader = false,
    bool showLogPayload = false,
    Object? e,
  }) {
    print("");
    if (printOn == PrintOn.success) {
      if (showLog) {
        print("🟢🟢🟢 SUKSES | 📘 GET | 📌 $url");
        if (showLogResponse) {
          print("🔵 RESPONSE");
          logger.d(json.decode(json.encode(response?.data)));
        }
        if (showLogHeader) {
          print("🔵 HEADER");
          logger.d(response?.requestOptions.headers);
        }
        if (showLogPayload) {
          print("🔵 PAYLOAD");
          logger.d(json
              .decode(json.encode(response?.requestOptions.queryParameters)));
        }
      }
    } else if (printOn == PrintOn.cancelToken) {
      if (showLog) {
        print("🟠 CANCEL | 📘 GET | 📌 $url");
      }
    } else if (printOn == PrintOn.socketException) {
      if (showLog) {
        print("🔴 LOG SocketException | 📘 GET | 📌 $url");
      }
    } else if (printOn == PrintOn.formatException) {
      if (showLog) {
        print("🔴 LOG FormatException | 📘 GET | 📌 $url");
      }
    } else if (printOn == PrintOn.onCatch) {
      if (showLog) {
        print("🔴🔴🔴 LOG catch | 📘 GET | 📌 $url");
        logger.d(e.toString());
      }
    }
  }

  static networkPOST(
    PrintOn printOn,
    String url, {
    Response<dynamic>? response,
    bool showLog = false,
    bool showLogResponse = false,
    bool showLogHeader = false,
    bool showLogPayload = false,
    Object? e,
  }) {
    print("");
    if (printOn == PrintOn.success) {
      if (showLog) {
        print("🟢🟢🟢 SUKSES | 📗 POST | 📌 $url");
        if (showLogResponse) {
          print("🔵 RESPONSE");
          logger.d(json.decode(json.encode(response?.data)));
        }
        if (showLogHeader) {
          print("🔵 HEADER");
          logger.d(response?.requestOptions.headers);
        }
        if (showLogPayload) {
          print("🔵 PAYLOAD");
          if (response?.requestOptions.data.toString() ==
              "Instance of 'FormData'") {
            FormData formData = response?.requestOptions.data;
            // print(formData.fields.toString());
            // print(formData.files.toString());
            logger.d(json.decode(json.encode(formData.fields.toString())));
            logger.d(json.decode(json.encode(formData.files.toString())));
          } else {
            logger.d(json.decode(json.encode(response?.requestOptions.data)));
          }
        }
      }
    } else if (printOn == PrintOn.cancelToken) {
      if (showLog) {
        print("🟠 CANCEL | 📗 POST | 📌 $url");
      }
    } else if (printOn == PrintOn.formatException) {
      if (showLog) {
        print("🔴 LOG FormatException | 📗 POST | 📌 $url");
        logger.d('Unable to process the data');
      }
    } else if (printOn == PrintOn.onCatch) {
      if (showLog) {
        print("🔴🔴🔴 LOG catch | 📗 POST | 📌 $url");
        logger.d(e.toString());
      }
    }
  }
}
