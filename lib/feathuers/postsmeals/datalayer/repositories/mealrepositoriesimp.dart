import 'package:dartz/dartz.dart';
import 'package:projectclean/core/error/Faliuer.dart';
import 'package:projectclean/core/error/exseption.dart';
import 'package:projectclean/core/network/networkinfo.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/models/mealmodel.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/datasources/remotdatasource.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/datasources/localdatasource.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/repositories/postmealrepositories.dart';

typedef Addorediteordelete = Future<Unit> Function();

class Mealrepositoriesimp implements Mealrepositories {
  final Locadatasource locadatasource;
  final Remotdatasource remotdatasource;
  final NetworkINFO networkINFO;

  Mealrepositoriesimp(
      {required this.networkINFO, required this.locadatasource, required this.remotdatasource});

  @override
  Future<Either<Failuer, List<Postmeal>>> getallmeal(String urlenorar) async {
    if (await networkINFO.isonline) {
      try {
        final postsmeals = await remotdatasource.getallmeal(urlenorar);
        await locadatasource.cachedpost(postsmeals);
        return right(postsmeals);
      } on ServerException {
        return left(Serverfailure());
      }
     
    } else {
      try {
        
        final postsmeals = await locadatasource.getcachedmeal();
        
        return right(postsmeals);
      } on EmptyException {
        return left(Emptycachefailure());
      }
     
    }
  }

  @override
  Future<Either<Failuer, Unit>> addmeal(Postmeal postmeal) async {
    final Mealmodel mealmodel = Mealmodel(
       
       
        id: postmeal.id,
        categories: postmeal.categories,
        title: postmeal.title,
        affordability: postmeal.affordability,
        complexity: postmeal.complexity,
        imageUrl: postmeal.imageUrl,
        ingredients: postmeal.ingredients,
        steps: postmeal.steps,
        duration: postmeal.duration,
        isGlutenFree: postmeal.isGlutenFree,
        isVegan: postmeal.isVegan,
        isVegetarian: postmeal.isVegetarian,
        isLactoseFree: postmeal.isLactoseFree
        );
    if (await networkINFO.isonline) {
      try {
        remotdatasource.addtmeal(mealmodel);
        return right(unit);
      } on ServerException {
        return left(Serverfailure());
      }
    } else {
      return left(Offlinefailure());
    }
  }

  @override
  Future<Either<Failuer, Unit>> deleatmeal(String id) async {
    if (await networkINFO.isonline) {
      try {
        remotdatasource.deleatmeal(id);
        return right(unit);
      } on ServerException {
        return left(Serverfailure());
      }
    } else {
      return left(Offlinefailure());
    }
  }

  @override
  Future<Either<Failuer, Unit>> editmeal(Postmeal postmeal) async {
    final Mealmodel mealmodel = Mealmodel(
        id: postmeal.id,
        categories: postmeal.categories,
        title: postmeal.title,
        affordability: postmeal.affordability,
        complexity: postmeal.complexity,
        imageUrl: postmeal.imageUrl,
        ingredients: postmeal.ingredients,
        steps: postmeal.steps,
        duration: postmeal.duration,
        isGlutenFree: postmeal.isGlutenFree,
        isVegan: postmeal.isVegan,
        isVegetarian: postmeal.isVegetarian,
        isLactoseFree: postmeal.isLactoseFree 
       );
    return await _getfunc(() {
      return remotdatasource.editmeal(mealmodel);
    });
  }

  Future<Either<Failuer, Unit>> _getfunc(Addorediteordelete fun) async {
    if (await networkINFO.isonline) {
      try {
        await fun();
        return right(unit);
      } on ServerException {
        return left(Serverfailure());
      }
    } else {
      return left(Offlinefailure());
    }
  }
}
