import 'package:equatable/equatable.dart';

class Postmeal extends Equatable {
  final double duration;
  final String id, title, affordability, imageUrl, complexity;
  final List  steps, ingredients, categories;
  final bool isGlutenFree, isVegan, isVegetarian, isLactoseFree;

  const Postmeal(
      {required this.complexity,
      required this.duration,
      required this.id,
      required this.title,
      required this.affordability,
      required this.imageUrl,
      required this.steps,
      required this.ingredients,
      required this.categories,
      required this.isGlutenFree,
      required this.isVegan,
      required this.isVegetarian,
      required this.isLactoseFree});

  @override
  List<Object?> get props => [
        id,
        isVegan,
        duration,
        isVegetarian,
        isLactoseFree,
        isGlutenFree,
        steps,
        ingredients,
        categories,
        id,
        title,
        affordability,
        imageUrl
      ];
}
