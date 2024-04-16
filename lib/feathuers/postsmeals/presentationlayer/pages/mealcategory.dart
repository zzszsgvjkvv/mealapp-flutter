import 'package:flutter/material.dart';
import 'package:projectclean/feathuers/postsmeals/dominlayer/Etities/Entitepostmeal.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/Detailmeal.dart';
//import 'package:transparent_image/transparent_image.dart';

class Categoriesmeal extends StatelessWidget {
  const Categoriesmeal({super.key, required this.meal});
  final Postmeal meal;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor.withOpacity(0.2),
      child: Column(
        children: [
           InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Detailmeal(meal: meal))));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    clipBehavior: Clip.hardEdge,
                    elevation: 8,
                    child: Stack(
                      children: [
                        FadeInImage(
                            width: double.infinity,
                            placeholder:
                                const AssetImage("assets/images/loding.PNG"),
                            image: NetworkImage(
                              meal.imageUrl,
                            )),
                        Positioned(
                            bottom: 2,
                            left: 0,
                            right: 0,
                            child: Container(
                              color: Color.fromARGB(205, 7, 1, 1),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 20),
                              child: Text(
                                meal.title,
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis),
                                softWrap: true,
                              ),
                            ))
                      ],
                    ),
                  )),
          Container(
            color: Theme.of(context).primaryColor.withOpacity(0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(
                      width: 2,
                    ),
                    Text("${meal.duration} \$")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.work),
                    SizedBox(
                      width: 2,
                    ),
                    Text(meal.complexity)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money),
                    SizedBox(
                      width: 2,
                    ),
                    Text(meal.affordability)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
