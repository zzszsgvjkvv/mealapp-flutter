import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:projectclean/core/network/networkinfo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/usecases/addmeal.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/usecases/deletmeal.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/usecases/editemeal.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/usecases/getallmeal.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/datasources/remotdatasource.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/datasources/localdatasource.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/repositories/mealrepositoriesimp.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/repositories/postmealrepositories.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/bloc/bloc/gettallmeals/getallmeal_bloc.dart';
import 'package:projectclean/feathuers/datapostitms/presentationlayer/bloc/bloc/adddeletedit/addeditdeleatmeals_bloc.dart';

final sl = GetIt.instance;
Future<void> init() async {
//features meals

//bloc "factory"
  sl.registerFactory(() => GetallmealBloc(getallmeal: sl()));
  sl.registerFactory(() =>
      AddeditdeleatmealsBloc(deletmeal: sl(), editemeal: sl(), addemeal: sl()));

//usecases
  sl.registerLazySingleton(() => Getallmealusecase(mealrepositories: sl()));
  sl.registerLazySingleton(() => Addemealusecase(mealrepositories: sl()));
  sl.registerLazySingleton(() => Editemealusecase(mealrepositories: sl()));
  sl.registerLazySingleton(() => Deletmealusecase(mealrepositories: sl()));

//repository
  sl.registerLazySingleton<Mealrepositories>(() => Mealrepositoriesimp(
        locadatasource: sl(),
        networkINFO: sl(),
        remotdatasource: sl(),
      ));
//datasources

  sl.registerLazySingleton<Locadatasource>(
      () => Locadatasourceim(sharedPreferences: sl()));
  sl.registerLazySingleton<Remotdatasource>(
      () => Remotdatasourceim(client: sl()));
//core
  sl.registerLazySingleton<NetworkINFO>(
      () => NetworkINFOimp(internetConnectionChecker: sl()));

//external

  final sharedPreferences =await SharedPreferences.getInstance();



  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}