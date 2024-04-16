part of 'getallmeal_bloc.dart';

sealed class GetallmealState extends Equatable {
  const GetallmealState();

  @override
  List<Object> get props => [];
}

final class GetallmealInitial extends GetallmealState {}

class Lodingstate extends GetallmealState {}

class Errorgetmealstate extends GetallmealState {
  final String mesg;

  const Errorgetmealstate({required this.mesg});
  @override
  List<Object> get props => [mesg];
}

class Lodedgstate extends GetallmealState {
  final List<Postmeal> meals;
  final Map filtteruser;

  const Lodedgstate( {required this.meals,required this.filtteruser,});
  @override
  List<Object> get props => [meals];
}
