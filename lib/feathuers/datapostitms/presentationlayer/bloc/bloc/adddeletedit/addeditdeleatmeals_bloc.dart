import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:projectclean/core/error/mesg.dart';
import 'package:projectclean/core/error/Faliuer.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/usecases/addmeal.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/usecases/deletmeal.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/usecases/editemeal.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';

part 'addeditdeleatmeals_event.dart';
part 'addeditdeleatmeals_state.dart';

class AddeditdeleatmealsBloc
    extends Bloc<AddeditdeleatmealsEvent, AddeditdeleatmealsState> {
  final Deletmealusecase deletmeal;
  final Editemealusecase editemeal;
  final Addemealusecase addemeal;
  AddeditdeleatmealsBloc({required this.deletmeal, required this.editemeal, required this.addemeal})
      : super(AddeditdeleatmealsInitial()) {
    on<AddeditdeleatmealsEvent>((event, emit) async {
      if (event is Addmealevent) {
        emit(Lodingstate());
        final ethir = await addemeal(event.postmeal);
        fuErrorLodedgstate(ethir, Mesg.addsucces.name);
      } else if (event is Updatmealevent) {
        final ethir = await editemeal(event.postmeal);
        fuErrorLodedgstate(ethir, Mesg.editesucces.name);
      } else if (event is Deletmealevent) {
        final ethir = await deletmeal(event.postmealid);
        fuErrorLodedgstate(ethir, Mesg.deleatsucces.name);
      }
    });
  }
}

AddeditdeleatmealsState fuErrorLodedgstate(
    Either<Failuer, Unit> either, String succesmsg) {
  return either.fold((failuer) {
    return Errorstate(mesg: _mesgfailure(failuer));
  }, (_) {
    return Statusmesg(mesg: succesmsg);
  });
}

String _mesgfailure(Failuer failuer) {
  switch (failuer.runtimeType) {
    case Serverfailure:
      return Mesg.ServerException.name;
    case Offlinefailure:
      return Mesg.EmptyException.name;

    default:
      return "unexpected please error try again...";
  }
}
