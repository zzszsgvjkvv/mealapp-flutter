import 'package:flutter/material.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/Filttermeal.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/mealcategory.dart';





class Mealscreen extends StatelessWidget {
  const Mealscreen({super.key, required this.postmeal, required this.title});
  final List<Postmeal> postmeal;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body:postmeal.isEmpty? Center(child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) =>const Filttermeal(),));
        },
        child:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            Text("no meal for you filtter",style: TextStyle(fontSize: 30),),
            SizedBox(width: 10,),
              Icon(Icons.settings ,size: 20,),
          ],
        ),
      ),): ListView.separated(
        itemCount: postmeal.length,
        separatorBuilder: (BuildContext context, int index) {return const SizedBox(height: 20,); }, 
        
        itemBuilder: (BuildContext context, int index) { 
           return  Categoriesmeal(
          meal: postmeal[index],
        );
         },
      ),
    );
  }
}
