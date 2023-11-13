part of'shared_perfrence_cubit.dart';

abstract class SharedPreferencesState extends Equatable{

  @override
  List<Object?> get props => [];

}
class SharedPreferencesInitial extends SharedPreferencesState {
  SharedPreferencesInitial() : super();
}

class CheckcodeLoading extends SharedPreferencesState {
   CheckcodeLoading() : super();

  @override
  List<Object?> get props => [];
}

class SharedPreferencesLoaded extends SharedPreferencesState {



  SharedPreferencesLoaded();

  @override
  List<Object?> get props => [];
}

class CheckcodeFailed extends SharedPreferencesState {


   CheckcodeFailed() : super();

  @override
  List<Object?> get props => [];
}