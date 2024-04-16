part of 'addeditdeleatmeals_bloc.dart';

sealed class AddeditdeleatmealsEvent extends Equatable {
  const AddeditdeleatmealsEvent();

  @override
  List<Object> get props => [];
}

class Addmealevent extends AddeditdeleatmealsEvent {
  final Postmeal postmeal;

  const Addmealevent({required this.postmeal});
  @override
  List<Object> get props => [postmeal];
}

class Updatmealevent extends AddeditdeleatmealsEvent {
  final Postmeal postmeal;

  const Updatmealevent({required this.postmeal});
  @override
  List<Object> get props => [postmeal];
}
class Deletmealevent extends AddeditdeleatmealsEvent {
  final String postmealid;

  Deletmealevent({required this.postmealid});
   @override
  List<Object> get props => [postmealid]; 
}
