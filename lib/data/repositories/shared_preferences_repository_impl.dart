import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled1/domain/repositories/shared_preferences_repository.dart';

@LazySingleton(as: SharedPreferencesRepository)
class SharedPreferencesRepositoryImpl extends SharedPreferencesRepository {
  final SharedPreferences sharedPreferences;

  SharedPreferencesRepositoryImpl({required this.sharedPreferences});

  @override
  String getString(String key) {
    String? value = sharedPreferences.getString(key);
    return value ?? "";
  }

  @override
  setString(String key, String value) {
    sharedPreferences.setString(key, value);
  }

  @override
  Future<bool> remove(String key) {
    return sharedPreferences.remove(key);
  }
}
