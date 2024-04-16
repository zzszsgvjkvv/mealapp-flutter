import 'package:dartz/dartz.dart';
import 'package:projectclean/core/error/Faliuer.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/repositories/postmealrepositories.dart';



class Getallmealusecase {
  final Mealrepositories mealrepositories;

  Getallmealusecase({required this.mealrepositories});
  Future<Either<Failuer, List<Postmeal>>> call(String urlenorar) async {
    return await mealrepositories.getallmeal(urlenorar);
  }
}
