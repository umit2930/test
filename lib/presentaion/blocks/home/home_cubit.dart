import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/repositories/app_repository.dart';
import 'package:untitled1/domain/repositories/shared_preferences_repository.dart';

import '../../../core/network/interceptor.dart';


part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState>{
  final AppRepository appRepository;




  HomeCubit(this.appRepository)
      : super( HomeInitial(list: []));


  getData(int offset) async {

    emit(HomeInitial(list: state.list));
    final result = await appRepository.getList(offset: offset);
    result.fold(
          (l) => emit(HomeFailed(list: state.list)),
          (r) {
        emit(HomeLoaded(list: [...state.list, ...r]));
      },
    );
  }
}