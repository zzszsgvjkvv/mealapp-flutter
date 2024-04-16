import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:projectclean/core/conststreing/Constant.dart';

class Filttermeal extends StatefulWidget {
  const Filttermeal({super.key});

  @override
  State<Filttermeal> createState() => _FilttermealState();
}

class _FilttermealState extends State<Filttermeal> {
  bool lactoseFree = false;
  bool vegetarian = false;
  bool glutenFree = false;
  bool vegan = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filttermeal")),
      body: ListView(
        children: [
          langmap("LactoseFree ", "Sugar Free Milk is a disaccharide", (k) {
            setState(() {
              lactoseFree = k;
            });
          }, lactoseFree),
          langmap(" Vegetarian ",
              "whose diet consists wholly of vegetables, fruits, grains, nuts,",
              (k) {
            setState(() {
              vegetarian = k;
            });
          }, vegetarian),
          langmap(" GlutenFree ",
              "A gluten-free diet excludes any foods that contain gluten", (k) {
            setState(() {
              glutenFree = k;
            });
          }, glutenFree),
          langmap("Vegan",
              "does not eat or use any animal products, such as meat, fish, eggs, cheese, or leather",
              (k) {
            setState(() {
              vegan = k;
            });
          }, vegan),
          TextButton(
              onPressed: () async {
                Map<String, bool> filtterusermap = {
                  Filtter.isGlutenFree.name: glutenFree,
                  Filtter.isLactoseFree.name: lactoseFree,
                  Filtter.isVegetarian.name: vegetarian,
                  Filtter.isVegan.name: vegan,
                };
                final SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                sharedPreferences.setString(
                    filtteruserselect, json.encode(filtterusermap));
            
              },
              child: const Text("Aply filtter"))
        ],
      ),
    );
  }

  Widget langmap(
      String title, String subtitle, Function(bool)? onChanged, bool value) {
    return SwitchListTile(
      inactiveTrackColor: Theme.of(context).primaryColor.withOpacity(0.5),
      subtitle: Text(subtitle),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
      value: value,
      onChanged: onChanged,
    );
  }
}
