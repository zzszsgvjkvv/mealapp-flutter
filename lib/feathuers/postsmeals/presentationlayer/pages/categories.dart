import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectclean/AppLocalizatons.dart';
import 'package:projectclean/core/error/exseption.dart';
import 'package:projectclean/core/conststreing/Constant.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/models/mealmodel.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/favorites.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/Filttermeal.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/category_mealitms.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/local/2.1%20dummy_data.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/bloc/bloc/gettallmeals/getallmeal_bloc.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/bloc/bloc/cubit/languagechange_cubit/languagechange_cubit.dart';


// ignore: unused_import

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  Future<List<Mealmodel>> getallmeal() async {
    final response = await http.get(
        Uri.parse(
            "https://cleancodeapp-fb7ab-default-rtdb.firebaseio.com/meal.json"),
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
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _drawerhom(context),
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppLocalizatons.of(context)!.translate('titleHomepage')),
        ),
        body: _bodyhome());
  }
}

Widget _drawerhom(BuildContext context) {
  return Drawer(
      child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: ListView(
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage(
            "assets/images/loding.PNG",
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "User name",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
       
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Language", style: TextStyle(fontSize: 20)),
            const SizedBox(
              width: 12,
            ),
            BlocBuilder<LanguagechangeCubit, LanguagechangeState>(
              builder: (context, state) {
                if (state is Languagechange) {
                  return DropdownButton<String>(
                      value: state.languagecode,
                      items: ['ar', 'en']
                          .map((String e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(
                                langmap[e]!,
                                style: const TextStyle(color: Colors.red),
                              )))
                          .toList(),
                      onChanged: (String? value) {
                        if (value != null) {
                          BlocProvider.of<GetallmealBloc>(context)
                              .add(Refeshgetmeaalls());
                          BlocProvider.of<LanguagechangeCubit>(context)
                              .setlanguagecod(value);
                        }

                        Navigator.pop(
                          context,
                        );
                      });
                } else {
                  return const SizedBox();
                }
              },
            )
          ],
        ),
            const SizedBox(height: 24,),
        InkWell(
          onTap: () {
              Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const Favorites()));
          },
           child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 40,
              ),
            
                 
                  Text(
                    "favorit",
                    style: TextStyle(fontSize: 20),
                  ),
            ],
                 ),
         ),
           const SizedBox(height: 24,),
         InkWell(
          onTap:  () {
                  Navigator.of(context).pop();
                },
          child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(Icons.restaurant,size: 40,),
             SizedBox(width: 24,),
            Text(
              "Meals",
              style: TextStyle(fontSize: 20),
            ),
           
           ],
        ),),
        const SizedBox(height: 24,),
        InkWell(
          onTap: () {
             Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const Filttermeal()));
          },
          child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(Icons.settings,size: 40,),
             SizedBox(width: 12,),
            Text(
              "filtter",
              style: TextStyle(fontSize: 20),
            ),
           
          ],
        ),),
         InkWell(
          onTap: () {
            
          },
          child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(Icons.login,size: 40,),
             SizedBox(width: 12,),
            Text(
              "login",
              style: TextStyle(fontSize: 20),
            ),
           
          ],
        ),),
          InkWell(
          onTap: () {
            
          },
          child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(Icons.login,size: 40,),
             SizedBox(width: 12,),
            Text(
              "sigin",
              style: TextStyle(fontSize: 20),
            ),
           
          ],
        ),),
      ],
    ),
  ));
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


/*Widget _buildbody() {
  return BlocBuilder<GetallmealBloc, GetallmealState>(
    builder: (context, state) {
      if (state is Lodingstate) {
        return const Lodingstatwidget();
      } else if (state is Errorgetmealstate) {
        return Errorgetmealstatewidget(mesg: state.mesg);
      } else if (state is Lodedgstate) {
        // state.meals.where((element) => element.categories.contains(""));
        return RefreshIndicator(
            child: Lodedmealsstatewidget(meals: state.meals),
            onRefresh: () => _onrefresh(context));
      } else {
        return const SizedBox();
      }
    },
  );
}

Future<void> _onrefresh(BuildContext context) async {
  BlocProvider.of<GetallmealBloc>(context).add(Refeshgetmeaalls());
} */
 