import 'package:dartz/dartz.dart';
import 'package:projectclean/core/error/Faliuer.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/repositories/mealrepositoriesimp.dart';



class Deletmealusecase {
  final Mealrepositoriesimp mealrepositories;

  Deletmealusecase({required this.mealrepositories});
  Future<Either<Failuer, Unit>> call(String id) async {
    return await mealrepositories.deleatmeal(id);
  }
}
