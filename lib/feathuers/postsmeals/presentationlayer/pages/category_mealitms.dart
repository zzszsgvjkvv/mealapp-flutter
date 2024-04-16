import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectclean/core/widget/lodingwidget.dart';
import 'package:projectclean/core/conststreing/Constant.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/mealscreens.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/local/2.1%20dummy_data.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/widgets/Errorgetmealstatewidget.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/bloc/bloc/gettallmeals/getallmeal_bloc.dart';


class Categoriesmeals extends StatelessWidget {
  const Categoriesmeals({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return _buildbody(context);
  }











  Widget fun(BuildContext context, List<Postmeal> meals) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => Mealscreen(
                  title: category.title,
                  postmeal: meals,
                )));
      },
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            category.color.withOpacity(0.5),
            category.color.withOpacity(0.8),
            category.color.withOpacity(0.98),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 21, color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }

  Widget _buildbody(BuildContext context) {
    return BlocBuilder<GetallmealBloc, GetallmealState>(
      builder: (context, state) {
        if (state is Lodingstate) {
          return const Lodingstatwidget();
        } else if (state is Errorgetmealstate) {
     
          return Errorgetmealstatewidget(mesg: state.mesg);
        } else if (state is Lodedgstate) {
          final List<Postmeal> meals = state.meals
              .where((element) => element.categories.contains(category.id))
              .toList();
         final List<Postmeal> mealsfilter=meals.where((e) {

         if(state.filtteruser[Filtter.isVegan.name]!&& !e.isVegan)
       {  return false ;}
           if(state.filtteruser[Filtter.isGlutenFree.name]!&& !e.isGlutenFree)
       {  return false ;}
           if(state.filtteruser[Filtter.isLactoseFree.name]!&& !e.isLactoseFree)
       {  return false ;}
         if(state.filtteruser[Filtter.isVegetarian.name]!&& !e.isVegetarian)
       {  return false ;}
       else{
        return true;
       }
         }
         ).toList();     
          return  
            fun(context, mealsfilter);
          

        } 
        
    
     
         else {
          /*  return  RefreshIndicator(
            child:fun(context, meals),
             onRefresh: () => _onrefresh(context)); */
          return const SizedBox();
        } 
    
      },
    );
  }
}

Future<void> _onrefresh(BuildContext context) async {

  BlocProvider.of<GetallmealBloc>(context).add(Refeshgetmeaalls());
}
