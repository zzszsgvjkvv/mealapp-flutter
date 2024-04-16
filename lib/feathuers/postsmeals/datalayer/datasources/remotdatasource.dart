import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:projectclean/core/error/exseption.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/models/mealmodel.dart';


abstract class Remotdatasource {
  Future<List<Mealmodel>> getallmeal(String urlaroren);
  Future<Unit> deleatmeal(String id);
  Future<Unit> addtmeal(Mealmodel mealmodel);
  Future<Unit> editmeal(Mealmodel mealmodel);
}

const String Baseurl =
    'https://cleancodeapp-fb7ab-default-rtdb.firebaseio.com/meal';

class Remotdatasourceim extends Remotdatasource {
  final http.Client client;

  Remotdatasourceim({required this.client});
  @override
  Future<List<Mealmodel>> getallmeal(String urlaroren) async {
    final response = await client.get(Uri.parse("$Baseurl$urlaroren.json"),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      final Map<String, dynamic> decodejson = json.decode(response.body);

      List<Mealmodel> postmeals = decodejson.entries
          .map<Mealmodel>(
              (postmeal) => Mealmodel.fromjsonid(postmeal.value, postmeal.key))
          .toList();

      return postmeals;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> addtmeal(Mealmodel mealmodel) async {
    final Body = {};
    final response = await client.post(Uri.parse("$Baseurl.json"),
        headers: {"Content-Type": "application/json"}, body: Body);

    if (response.statusCode == 200) {
      return Future.value(unit);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> deleatmeal(String id) async {
    final respons = await client.delete(
      Uri.parse("$Baseurl/$id.json"),
      headers: {"Content-Type": "application/json"},
    );
    if (respons.statusCode == 200) {
      return Future.value(unit);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> editmeal(Mealmodel mealmodel) async {
    final String id = mealmodel.id;
    final respons = await client.patch(Uri.parse(Baseurl + id),
        headers: {"Content-Type": "application/json"}, body: {});
    if (respons.statusCode == 200) {
      return Future.value(unit);
    } else {
      throw ServerException();
    }
  }
}
