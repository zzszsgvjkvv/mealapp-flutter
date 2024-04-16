import 'package:flutter/material.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';

class Lodedmealsstatewidget extends StatelessWidget {
  final List<Postmeal> meals;
  const Lodedmealsstatewidget({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) => Container(
        margin: EdgeInsets.all(20),
        child: Image.network(meals[index].imageUrl),
      ),
    );
  }
}
