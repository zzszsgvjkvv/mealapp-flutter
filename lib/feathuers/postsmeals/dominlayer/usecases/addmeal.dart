import 'package:dartz/dartz.dart';
import 'package:projectclean/core/error/Faliuer.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/repositories/postmealrepositories.dart';




class Addemealusecase {
  final Mealrepositories mealrepositories;

  Addemealusecase({required this.mealrepositories});
  Future<Either<Failuer, Unit>> call(Postmeal postmeal) async {
    return await mealrepositories.addmeal(postmeal);
  }
}
