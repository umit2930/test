part of'home_cubit.dart';

abstract class HomeState extends Equatable{

  final List<String> list;

  HomeState(this.list);
  @override
  List<Object?> get props => [];

}
class HomeInitial extends HomeState {
  final List<String> list;

  HomeInitial({required this.list}) : super(list);
}

class HomeLoading extends HomeState {
  final List<String> list;

  HomeLoading({required this.list}) : super(list);

  @override
  List<Object?> get props => [];
}

class HomeLoaded extends HomeState {
  final List<String> list;

  HomeLoaded({required this.list}): super(list);

  @override
  List<Object?> get props => [];
}

class HomeFailed extends HomeState {
  final List<String> list;



  HomeFailed({required this.list}) : super(list);

  @override
  List<Object?> get props => [];
}