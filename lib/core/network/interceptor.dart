import 'dart:io';

import 'package:dio/dio.dart';
const authTokenKey = "auth_token";

class AppInterceptor extends Interceptor {
  // final AuthenticationCubit authenticationCubit;
  // final SharedPreferencesRepository sharedPreferences;

  AppInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // final String token = sharedPreferences.getString(authTokenKey);
    // if (token.isNotEmpty) {
    //   final headers = <String, dynamic>{
    //     HttpHeaders.contentTypeHeader: 'application/json',
    //     'Authorization': "Bearer $token",
    //   };
    //   return handler.next(options..headers.addAll(headers));
    // }
    final headers = <String, dynamic>{
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    return handler.next(options..headers.addAll(headers));
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // if (_shouldSignOut(err) && authenticationCubit.isAuthenticated) {
    //   authenticationCubit.logOut(); //todo check me if I work
    // }
    super.onError(err, handler);
  }

  bool _shouldSignOut(DioError err) => //todo check me if I work
      err.response?.statusCode == 401 &&
      err.response?.data?['errors']?.any((e) => e['code'] == 'UNAUTHORIZED');
}
