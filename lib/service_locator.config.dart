// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import 'core/network/api_helper.dart' as _i7;
import 'data/data_sources/app_data_source.dart' as _i8;
import 'data/repositories/app_repository_impl.dart' as _i10;
import 'data/repositories/shared_preferences_repository_impl.dart' as _i6;
import 'domain/repositories/app_repository.dart' as _i9;
import 'domain/repositories/shared_preferences_repository.dart' as _i5;
import 'presentaion/blocks/sharedPerfrence/shared_perfrence_cubit.dart' as _i11;
import 'service_locator.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  await gh.singletonAsync<_i3.Dio>(
    () => registerModule.resolveDio,
    preResolve: true,
  );
  await gh.singletonAsync<_i4.SharedPreferences>(
    () => registerModule.resolveSharedPreferences,
    preResolve: true,
  );
  gh.lazySingleton<_i5.SharedPreferencesRepository>(() =>
      _i6.SharedPreferencesRepositoryImpl(
          sharedPreferences: get<_i4.SharedPreferences>()));
  gh.lazySingleton<_i7.ApiHelper>(() => _i7.ApiHelper(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i8.AppDataSource>(
      () => _i8.AppDataSourceImpl(get<_i7.ApiHelper>()));
  gh.lazySingleton<_i9.AppRepository>(
      () => _i10.AppRepositoryImpl(dataSource: get<_i8.AppDataSource>()));
  gh.factory<_i11.SharedPreferencesCubit>(() =>
      _i11.SharedPreferencesCubit(get<_i5.SharedPreferencesRepository>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
