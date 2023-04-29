import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../utils/constant.dart';

@module
// Define the class as a module that can be used by the injectable package.
abstract class AppModule {
  @lazySingleton
  // Create a singleton instance of the Dio class.
  Dio get dio {
    // Initialize the Dio instance with the base options for the requests.
    final aDio = Dio(
      BaseOptions(
        baseUrl: Constant.baseUrl,
        connectTimeout: Constant.connectTimeout,
        receiveTimeout: Constant.receiveTimeout,
        sendTimeout: Constant.sendTimeout,
      ),
    );

    // Add the PrettyDioLogger interceptor to the Dio instance if running in debug mode.
    if (kDebugMode) {
      aDio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
    }

    // Return the configured Dio instance.
    return aDio;
  }
}
