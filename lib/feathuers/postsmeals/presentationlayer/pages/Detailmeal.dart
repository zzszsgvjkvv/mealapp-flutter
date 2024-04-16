import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectclean/AppLocalizatons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/models/mealmodel.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';
import 'package:projectclean/feathuers/datapostitms/presentationlayer/bloc/bloc/cubit/cubit/favorites_cubit.dart';



class Detailmeal extends StatelessWidget {
  const Detailmeal({super.key, required this.meal});
  final Postmeal meal;
  @override
  Widget build(BuildContext context) {
    Mealmodel mealmodel=Mealmodel(id: meal.id, categories: meal.categories, title: meal.title, affordability: meal.affordability, complexity: meal.complexity, imageUrl: meal.imageUrl, ingredients: meal.ingredients, steps: meal.steps, duration: meal.duration, isGlutenFree: meal.isGlutenFree, isVegan: meal.isVegan, isVegetarian: meal.isVegetarian, isLactoseFree: meal.isLactoseFree);
    return Scaffold(appBar: appBar(mealmodel), body: bodywidget(context));
  }

  Widget bodywidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ListView(children: [
        FadeInImage(
            width: double.infinity,
            placeholder: const AssetImage("assets/images/loding.PNG"),
            image: NetworkImage(
              meal.imageUrl,
            )),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            AppLocalizatons.of(context)!.translate('DETAILMEAL'),
            maxLines: 1,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis),
            softWrap: true,
          ),
        ),
        Text(
          "${AppLocalizatons.of(context)!.translate('duration')} ${meal.duration.toString()} ",
          maxLines: 1,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis),
          softWrap: true,
        ),
        Text(
          "${AppLocalizatons.of(context)!.translate('affordability')}: ${meal.affordability}",
          // textAlign: TextAlign.center,
          maxLines: 1,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
              overflow: TextOverflow.ellipsis),
          softWrap: true,
        ),
        Text(
          "${AppLocalizatons.of(context)!.translate('complexity')}:${meal.complexity}",
          //   textAlign: TextAlign.center,
          maxLines: 1,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              //     color: Colors.white,
              overflow: TextOverflow.ellipsis),
          softWrap: true,
        ),
        Center(
          child: Text(
            AppLocalizatons.of(context)!.translate('ingredients'),
            textAlign: TextAlign.center,
            maxLines: 1,
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                //  color: Colors.white,
                overflow: TextOverflow.ellipsis),
            softWrap: true,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        ...meal.ingredients.map((e) => Text(
              "$e",
              maxLines: 1,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  //  color: Colors.white,
                  overflow: TextOverflow.ellipsis),
              softWrap: true,
            )),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            AppLocalizatons.of(context)!.translate("steps"),
            textAlign: TextAlign.center,
            maxLines: 1,
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                //  color: Colors.white,
                overflow: TextOverflow.ellipsis),
            softWrap: true,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        ...meal.steps
            .map((e) => Text(
                  "$e",
                  maxLines: 1,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      //  color: Colors.white,
                      overflow: TextOverflow.ellipsis),
                  softWrap: true,
                ))
            .toList(),
      ]),
    );
  }

  PreferredSizeWidget appBar(Mealmodel postmealitm) {
    return AppBar(
        actions: [
          BlocProvider(
            create: (context) => FavoritesCubit(),
            child: BlocBuilder<FavoritesCubit, FavoritesState>(
              builder: (context, state) {
                return IconButton(
                    onPressed: ()async {
                       BlocProvider.of<FavoritesCubit>(context).togglemealfavoritesmeal(postmealitm);
                            final SharedPreferences sharedPreferences=await SharedPreferences.getInstance();

     final jsonstring = sharedPreferences.getString(cachfavorit);
     print(jsonstring);
                    }, icon: const Icon(Icons.star));
              },
            ),
          )
        ],
        title: Text(
          meal.title,
          textAlign: TextAlign.center,
          maxLines: 1,
          style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis),
          softWrap: true,
        ));
  }
}
