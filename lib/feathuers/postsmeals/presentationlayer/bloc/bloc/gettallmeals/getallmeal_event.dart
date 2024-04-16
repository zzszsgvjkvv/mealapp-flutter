part of 'getallmeal_bloc.dart';

sealed class GetallmealEvent extends Equatable {
  const GetallmealEvent();
  @override
  List<Object> get props => [];

  
}
class GettallMeals extends GetallmealEvent{}
class Refeshgetmeaalls extends GetallmealEvent{}