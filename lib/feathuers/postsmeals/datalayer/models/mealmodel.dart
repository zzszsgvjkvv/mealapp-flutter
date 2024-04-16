import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';

class Mealmodel extends Postmeal {
  Mealmodel({
    required super.duration,
    required super.id,
    required super.title,
    required super.affordability,
    required super.imageUrl,
    required super.steps,
    required super.ingredients,
    required super.categories,
    required super.isGlutenFree,
    required super.isVegan,
    required super.isVegetarian,
    required super.isLactoseFree,
    required super.complexity,
  });

  factory Mealmodel.fromjson(Map<String, dynamic> json) {
    return Mealmodel(
      id:"",
      duration: json['duration'],
        title: json['title'],
        affordability: json['affordability'],
        imageUrl: json['imageUrl'],
        steps: json['steps'],
        ingredients: json['ingredients'],
        categories: json['categories'],
        isGlutenFree: json['isGlutenFree'],
        isVegan: json['isVegan'],
        isVegetarian: json['isVegetarian'],
        isLactoseFree: json['isLactoseFree'],
        complexity: json['complexity']);
  }
  factory Mealmodel.fromjsonid(Map<String, dynamic> json, String ide) {
    return Mealmodel(
        id: ide,
        duration: json['duration'],
        title: json['title'],
        affordability: json['affordability'],
        imageUrl: json['imageUrl'],
        steps: json['steps'],
        ingredients: json['ingredients'],
        categories: json['categories'],
        isGlutenFree: json['isGlutenFree'],
        isVegan: json['isVegan'],
        isVegetarian: json['isVegetarian'],
        isLactoseFree: json['isLactoseFree'],
        complexity: json['complexity']);
  }
  Map<String, dynamic> tojson() {
    return {
      'id': id,
      'duration':duration,
        'title':title,
        'affordability':affordability,
      'imageUrl':imageUrl,
        'steps':steps,
        'ingredients':ingredients,
        'categories':categories,
        'isGlutenFree':isGlutenFree,
        'isVegan':isVegan,
        'isVegetarian': isVegetarian,
        'isLactoseFree':isLactoseFree,
        'complexity': complexity,
    };
  }
}
