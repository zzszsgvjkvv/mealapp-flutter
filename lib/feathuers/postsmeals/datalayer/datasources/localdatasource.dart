import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:projectclean/core/error/exseption.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/models/mealmodel.dart';

abstract class Locadatasource {
  Future<List<Mealmodel>> getcachedmeal();
  Future<Unit> cachedpost(List<Mealmodel> postsmeals);
}
 const String _cachmeal = "cachmeals";
class Locadatasourceim implements Locadatasource {

  final SharedPreferences sharedPreferences;

  Locadatasourceim({required this.sharedPreferences});
  @override
  Future<Unit> cachedpost(List<Mealmodel> postsmeals) {
    List postmealjson = postsmeals
        .map<Map<String, dynamic>>((Postmeale) => Postmeale.tojson())
        .toList();

    sharedPreferences.setString(_cachmeal, json.encode(postmealjson));
    return Future.value(unit);
  }

  @override
  Future<List<Mealmodel>> getcachedmeal() {
    final jsonstring = sharedPreferences.getString(_cachmeal);
    if (jsonstring != null) {
      List decodejsonstring = json.decode(jsonstring);
      List<Mealmodel> jsontopostmodel = decodejsonstring
          .map<Mealmodel>((postmodelmeal) => Mealmodel.fromjson(postmodelmeal))
          .toList();
      return Future.value(jsontopostmodel);
    } else {
      throw EmptyException();
    }
  }
}
