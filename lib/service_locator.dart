import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled1/core/network/interceptor.dart';
import 'package:untitled1/service_locator.config.dart';

import 'core/network/transformers.dart';
import 'core/utils/config.dart';



final sl = GetIt.I;

@InjectableInit()
Future initSL() async {
  await $initGetIt(sl);

  sl<Dio>().interceptors.addAll([
    AppInterceptor(),
    LogInterceptor(responseBody: true, requestBody: true),
  ]);
}

Future<Dio> getDio() async {
  final options = BaseOptions(
    baseUrl: serverUrl,
    connectTimeout: const Duration(seconds: 20),
    receiveTimeout: const Duration(seconds: 20),
    // headers: {
    //   'User-Agent': await getUserAgent(),
    //   // 'version': FkUserAgent.getProperty('applicationVersion'),
    // },
  );
  return Dio(options)..transformer = AsyncDataTransformer();
}



Future<SharedPreferences> getSharedPreferences() async {
  return await SharedPreferences.getInstance();
}

Future<String> getUserAgent() async {
  //todo fix me
  try {
    // final userAgent = await FkUserAgent.getPropertyAsync('userAgent');
    // return '${FkUserAgent.getProperty('applicationName')}/${FkUserAgent.getProperty('applicationVersion')} $userAgent';
    // return 'aghigh/${FkUserAgent.getProperty('applicationVersion')} $userAgent';
  } catch (e) {
    return '';
  }
  return '';
}

@module
abstract class RegisterModule {

  @singleton
  @preResolve
  Future<Dio> get resolveDio => getDio();

  @singleton
  @preResolve
  Future<SharedPreferences> get resolveSharedPreferences =>
      getSharedPreferences();


}
