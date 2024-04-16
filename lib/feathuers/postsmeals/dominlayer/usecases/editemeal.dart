import 'package:dartz/dartz.dart';
import 'package:projectclean/core/error/Faliuer.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/repositories/mealrepositoriesimp.dart';




class Editemealusecase {
  final Mealrepositoriesimp mealrepositories;

  Editemealusecase({required this.mealrepositories});
  Future<Either<Failuer, Unit>> call(Postmeal postmeal) async {
    return await mealrepositories.editmeal(postmeal);
  }
}
