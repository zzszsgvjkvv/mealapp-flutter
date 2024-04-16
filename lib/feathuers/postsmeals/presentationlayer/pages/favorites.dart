import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/mealcategory.dart';
import 'package:projectclean/feathuers/datapostitms/presentationlayer/bloc/bloc/cubit/cubit/favorites_cubit.dart';


class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => FavoritesCubit()..getallfavoritesmeal(),
      child: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          if(state is FavoritesInitial){
return Scaffold(
        appBar: AppBar(
          title: Text("Favorites)"),
        ),
      
      body: ListView.separated(
        itemCount:state.listmealmodel.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Categoriesmeal(
            meal: state.listmealmodel[index],
          );
        },
      ),
    );
          }
          else{
            return Container();
          }
        },
      ));
  }
}
