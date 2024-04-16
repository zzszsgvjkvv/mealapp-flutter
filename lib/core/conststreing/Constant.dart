import 'package:flutter/material.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/favorites.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/Itmscategory.dart';


const String filtteruserselect="filtteruserselect";
List<Widget> screenshome = [const Favorites(), const Itmscategory()];
Map<String, String> langmap = {"ar": "arabic", "en": "english"};

enum Filtter {
  isGlutenFree("isGlutenFree"),
  isVegan("isVegan"),
  isVegetarian("isVegetarian"),
  isLactoseFree("isLactoseFree");

  const Filtter(this.name);
  final String name;
}

Map<String, bool> filtteruser = {
  Filtter.isGlutenFree.name: true,
  Filtter.isVegan.name:  true,
  Filtter.isVegetarian.name:  true,
  Filtter.isLactoseFree.name:  true,
};
