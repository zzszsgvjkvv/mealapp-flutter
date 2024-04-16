import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:projectclean/core/error/mesg.dart';
import 'package:projectclean/core/error/Faliuer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:projectclean/core/conststreing/Constant.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/usecases/getallmeal.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';

part 'getallmeal_event.dart';
part 'getallmeal_state.dart';

class GetallmealBloc extends Bloc<GetallmealEvent, GetallmealState> {
  final Getallmealusecase getallmeal;

  GetallmealBloc({required this.getallmeal}) : super(GetallmealInitial()) {
    on<GetallmealEvent>((event, emit) async {
      const String languagecach = "languagecode";
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      final String urlaroren = sharedPreferences.getString(languagecach)??'ar';
      
      Map filtteruserget = await getfiltter();

      if (event is GettallMeals) {
        emit(Lodingstate());
        final mealsorfail = await getallmeal(urlaroren);
        emit(fuErrorLodedgstate(mealsorfail, filtteruserget));
      }
      if (event is Refeshgetmeaalls) {
        emit(Lodingstate());
        final mealsorfail = await getallmeal(urlaroren);
        emit(fuErrorLodedgstate(mealsorfail, filtteruserget));
      }
    });
  }
}

Future<Map> getfiltter() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final String? filtteruserjson =
      sharedPreferences.getString(filtteruserselect);

  if (filtteruserjson != null) {
    Map filtteruserselectd = json.decode(filtteruserjson);

    return filtteruserselectd;
  }
  return filtteruser;
}

String _mesgfailure(Failuer failuer) {
  switch (failuer.runtimeType) {
    case Serverfailure:
      return Mesg.ServerException.name;

    case Offlinefailure:
      return Mesg.EmptyException.name;

    case Emptycachefailure:
      return Mesg.WorndataException.name;

    default:
      return "unexpected please error try again...";
  }
}

GetallmealState fuErrorLodedgstate(
    Either<Failuer, List<Postmeal>> either, Map filtteruserget) {
  return either.fold((failuer) {
    return Errorgetmealstate(mesg: _mesgfailure(failuer));
  }, (listPostmeal) {
    return Lodedgstate(meals: listPostmeal, filtteruser: filtteruserget);
  });
}
