part of 'addeditdeleatmeals_bloc.dart';

sealed class AddeditdeleatmealsState extends Equatable {
  const AddeditdeleatmealsState();

  @override
  List<Object> get props => [];
}

final class AddeditdeleatmealsInitial extends AddeditdeleatmealsState {}

final class Lodingstate extends AddeditdeleatmealsState {}

final class Errorstate extends AddeditdeleatmealsState {
  final String mesg;

  const Errorstate({required this.mesg});
  @override
  List<Object> get props => [mesg];
}

final class Statusmesg extends AddeditdeleatmealsState {
  final String mesg;

  const Statusmesg({required this.mesg});
  @override
  List<Object> get props => [mesg];
}
