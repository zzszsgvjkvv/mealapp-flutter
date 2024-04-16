import 'package:projectclean/feathuers/postsmeals/datalayer/models/mealmodel.dart';


enum Complexity {
  simple("simple"),
  challenging("challenging"),
  hard("hard");
  
  
 

  const Complexity(this.name);
   final String name;
}
enum Complexityar {
  simple(" التحضير بسيط"),
  challenging("متوسط التعقيد"),
  hard("تحضير صعب");
  
  
 

  const Complexityar(this.name);
   final String name;
}

enum Affordability {
  affordable("affordable"),
  pricey("pricey"),
  luxurious("luxurious");
  const Affordability(this.name);
   final String name;
}
enum Affordabilityar {
  affordable("بسعر معقول"),
  pricey(" مرتفع الثمن"),
  luxurious("فاخر وغالي الثمن");
  const Affordabilityar(this.name);
   final String name;
}

class Meal extends Mealmodel {
  Meal({
  
 required super.id, required super.categories, required super.title, required super.affordability, required super.complexity, required super.imageUrl, required super.ingredients, required super.steps, required super.duration, required super.isGlutenFree, required super.isVegan, required super.isVegetarian, required super.isLactoseFree});

}
