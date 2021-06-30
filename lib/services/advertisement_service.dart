import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/configuration/env_config.dart';
import 'package:shop_app/contracts/advertisementServiceContract.dart';
import 'package:shop_app/helper/network_util.dart';
import 'package:shop_app/models/FluidXstores_media.dart';

class AdvertisementService implements AdvertisementServiceContract {
  @override
  Future<List<FluidXstoreMedia>> getAll() async {
    String errorMessage = '';

    try {
      // String apiName = EnvConfig.configs['userAuthenticationApiUrl'];
      // Dio dio = Dio();
      // dio.options.baseUrl = '${apiName}';
      // dio.options.connectTimeout = 20 * 3000;
      // dio.options.receiveTimeout = 30 * 3000;
      // dio.options.followRedirects = false;
      // dio.options.validateStatus = (status) {
      //   return status < 500;
      // };
      // dio.interceptors.add(_RequestInterceptor(dio: dio));
      // dio.interceptors
      //     .add(LogInterceptor(requestBody: true, responseBody: true));

      final client = NetworkUtil.getClient();
      final response = await client.get(
        'wp/v2/media',
      );

      if (response.statusCode >= 400) {
        errorMessage = (response.data);

        throw PlatformException(
            code: "${response.statusCode}",
            message: "getAllAdvertisementError.",
            details: '${response.data['message']}');
      }

      Map<String, dynamic> listado = response.data;
      var x = FluidXstoreMedia.fromJson(listado);
      return new List<FluidXstoreMedia>();
    } catch (e) {
      errorMessage = errorMessage.isEmpty ? e.toString() : errorMessage;
      throw Exception(errorMessage);
    }
  }
}

class _RequestInterceptor extends InterceptorsWrapper {
  final Dio dio;
  String username;
  String password;

  _RequestInterceptor({this.dio, this.username, this.password});

  @override
  Future InterceptorsWrapper(RequestOptions options) async {
    dio.lock();
    final token = await _getApiToken();
    options.headers['Authorization'] = 'Bearer $token';
    options.headers['Accept'] = 'application/json';
    dio.unlock();
    return options;
  }

  Future<String> _getApiToken() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    String token = sharedPreferences.getString(NetworkUtil.AUTH_TOKEN_KEY);
    final dateStr = sharedPreferences.getString(NetworkUtil.AUTH_TOKEN_DATE);
    if (token == null && dateStr == null) {
      throw new PlatformException(message: 'Token expired', code: '401');
    }

    final date = DateTime.parse(dateStr);
    final difference = date.difference(DateTime.now()).inDays;
    if (difference > 2 || difference < -1)
      throw new PlatformException(message: 'Token expired', code: '401');

    return token;
  }
}
