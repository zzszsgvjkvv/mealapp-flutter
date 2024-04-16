import 'package:flutter/material.dart';
import 'package:projectclean/AppLocalizatons.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/category_mealitms.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/local/2.1%20dummy_data.dart';



class Itmscategory extends StatelessWidget {
  const Itmscategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            onTap: (value) {},
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.star), label: "favorites"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.set_meal), label: "categories")
            ]), 
      body: _bodyhome(),
    );
  }
}

Widget _bodyhome() {
  return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 8 / 6),
        itemCount: availableCategories.length,
        itemBuilder: (context, index) => Categoriesmeals(
            category:
                AppLocalizatons.of(context)!.translate('languageCode') == 'en'
                    ? availableCategories[index]
                    : availableCategoriesar[index]),
      ));
}
