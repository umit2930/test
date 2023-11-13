import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/repositories/app_repository.dart';
import 'package:untitled1/domain/repositories/shared_preferences_repository.dart';

import '../../../core/network/interceptor.dart';


part 'shared_perfrence_state.dart';

@injectable
class SharedPreferencesCubit extends Cubit<SharedPreferencesState>{
  final SharedPreferencesRepository sharedPreferences;



  SharedPreferencesCubit(this.sharedPreferences)
      : super( SharedPreferencesInitial());



  void saveToken(String token) async {
    await sharedPreferences.setString(authTokenKey, token);
  }

  String getToken()  {
    return  sharedPreferences.getString(authTokenKey);
  }
  void clearToken() async {
    await sharedPreferences.setString(authTokenKey, "");
  }
}