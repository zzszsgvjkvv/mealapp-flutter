import 'package:dartz/dartz.dart';
import 'package:projectclean/core/error/Faliuer.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';


abstract class Mealrepositories {
  Future<Either<Failuer, List<Postmeal>>> getallmeal(String urlenorar);
  Future<Either<Failuer, Unit>> deleatmeal(String id);
  Future<Either<Failuer, Unit>> addmeal(Postmeal postmeal);
  Future<Either<Failuer, Unit>> editmeal(Postmeal postmeal);
}
