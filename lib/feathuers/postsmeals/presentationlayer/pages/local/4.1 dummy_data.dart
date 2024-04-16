import 'package:flutter/material.dart';
import 'package:projectclean/feathuers/postsmeals/datalayer/models/mealmodel.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/local/4.2%20meal.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/local/2.1%20dummy_data.dart';


// Constants in Dart should be written in lowerCamelcase.
const availableCategori = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

List<Mealmodel> dummyMeals = [
  Meal(
    id: 'm1',
    categories: const [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable.name,
    complexity: Complexity.simple.name,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: const [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: const [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: const [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable.name,
    complexity: Complexity.simple.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: const [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: const [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: const [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey.name,
    complexity: Complexity.simple.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: const [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: const [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: const [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious.name,
    complexity: Complexity.challenging.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: const [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: const [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: const [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious.name,
    complexity: Complexity.simple.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: const [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: const [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: const [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable.name,
    complexity: Complexity.hard.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: const [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: const [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: const [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable.name,
    complexity: Complexity.simple.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: const [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: const [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: const [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey.name,
    complexity: Complexity.challenging.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: const [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: const [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: const [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable.name,
    complexity: Complexity.hard.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: const [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: const [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: const [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious.name,
    complexity: Complexity.simple.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: const [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: const [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  )
];

List<Mealmodel> dummyMealsar = [
  Meal(
    id: 'm1',
    categories: const [
      'c1',
      'c2',
    ],
    title: 'معكرونة مع صلصة الطماطم',
    affordability: Affordabilityar.affordable.name,
    complexity: Complexityar.simple.name,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: const [
      "4 طماطم",
      "1 ملعقة كبيرة زيت زيتون",
      "1 بصلة",
      "250 جرام سباجيتي",
      "التوابل",
      "الجبن (اختياري)"
    ],
    steps: const [
      'قطعي الطماطم والبصل إلى قطع صغيرة',
      'اغلي بعض الماء وأضيفي إليه الملح عندما يغلي',
      "ضع السباغيتي في الماء المغلي - يجب أن يتم طهيها خلال 10 إلى 12 دقيقة تقريبًا.",
      "في هذه الأثناء، سخني بعض زيت الزيتون وأضيفي البصل المقطع."
          'بعد دقيقتين، أضيفي قطع الطماطم والملح والفلفل والبهارات الأخرى.',
      "ستنضج الصلصة بمجرد نضج السباغيتي."
          "لا تتردد في إضافة بعض الجبن فوق الطبق النهائي."
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: const [
      'c2',
    ],
    title: 'نخب هاواي',
    affordability: Affordabilityar.affordable.name,
    complexity: Complexityar.simple.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: const [
      "شريحة واحدة من الخبز الأبيض",
      "1 شريحة لحم خنزير",
      "شريحة أناناس واحدة",
      "1-2 شرائح جبن",
      'سمنة'
    ],
    steps: const [
      "زبدة جانب واحد من الخبز الأبيض",
      "ضعي لحم الخنزير والأناناس والجبن على الخبز الأبيض"
          'اخبزي الخبز المحمص لمدة 10 دقائق تقريباً في الفرن على حرارة 200 درجة مئوية'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: const [
      'c2',
      'c3',
    ],
    title: 'همبرغر كلاسيكي',
    affordability: Affordabilityar.pricey.name,
    complexity: Complexityar.simple.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: const [
      "300 جرام ماشية هاك",
      "1 طماطم",
      "1 خيار",
      "1 بصلة",
      'كاتشب',
      "2 كعك برجر"
    ],
    steps: const [
      "شكل 2 فطائر",
      "قم بقلي الفطائر لمدة 4 دقائق على كل جانب",
      "قم بقلي الكعك بسرعة لمدة دقيقة واحدة على كل جانب",
      "بروش الكعك مع الكاتشب",
      "يقدم البرجر مع الطماطم",
      "الخيار والبصل"
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: const [
      'c4',
    ],
    title: 'وينر شنيتزل',
    affordability: Affordabilityar.luxurious.name,
    complexity: Complexityar.challenging.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: const [
      '8 شرحات لحم العجل',
      '4 بيضات',
      "200 جرام فتات الخبز",
      "100 جرام طحين"
          "300 مل زبدة",
      "100 جرام زيت نباتي",
      'ملح',
      'شرائح ليمون'
    ],
    steps: const [
      'يطري لحم العجل إلى حوالي 2-4 ملم، والملح على الجانبين.',
      "على طبق مسطح، قومي بتحريك البيض لفترة وجيزة باستخدام الشوكة.",
      'غلفي شرائح اللحم بالدقيق ثم اغمسيها في البيض وأخيرًا في فتات الخبز.',
      'سخني الزبدة والزيت في مقلاة كبيرة (دعي الدهن يسخن جداً) واقلي شرائح اللحم حتى يصبح لونها بنياً ذهبياً على كلا الجانبين.',
      "تأكد من تقليب المقلاة بانتظام حتى تصبح شرائح شنيتزل محاطة بالزيت ويصبح الفتات "
          'أخرجيها وصفيها على ورق المطبخ. اقلي البقدونس في الزيت المتبقي ثم صفيه.',
      'ضعي شرائح الشنيتزل في طبق ساخن وقدميها مزينة بالبقدونس وشرائح الليمون.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: const [
      'c2'
          'c5',
      'c10',
    ],
    title: 'سلطة مع سمك السلمون المدخن',
    affordability: Affordabilityar.luxurious.name,
    complexity: Complexityar.simple.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: const [
      'جرجير',
      "خس الضأن",
      'بَقدونس',
      'الشمرة',
      "200 جرام سلمون مدخن",
      'خردل',
      'الخل البلسمي',
      'زيت الزيتون',
      'ملح وفلفل'
    ],
    steps: const [
      "غسل وتقطيع السلطة والأعشاب",
      "قطع السلمون إلى مكعبات",
      "يحضر الخردل والخل وزيت الزيتون إلى حلوى",
      "تحضير السلطة",
      "أضف مكعبات السلمون والصلصة",
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: const [
      'c6',
      'c10',
    ],
    title: 'موس البرتقال اللذيذ',
    affordability: Affordabilityar.affordable.name,
    complexity: Complexityar.hard.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: const [
      "4 أوراق من الجيلاتين",
      "150 مل عصير برتقال",
      "80 جرام سكر",
      "300 جرام زبادي",
      "200 جرام كريمة",
      'قشر البرتقال',
    ],
    steps: const [
      "ذوبي الجيلاتين في وعاء"
          "أضيفي عصير البرتقال والسكر"
          "ارفعي القدر عن الموقد"
          "أضف ملعقتين كبيرتين من الزبادي"
          "حرك الجيلاتين تحت الزبادي المتبقي",
      "برد كل شيء في الثلاجة"
          "اخفقي الكريمة وارفعيها تحت كتلة البرتقال"
          "تبرد مرة أخرى لمدة 4 ساعات على الأقل",
      "يقدم مع قشر البرتقال",
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: const [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordabilityar.affordable.name,
    complexity: Complexityar.simple.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: const [
      '1 1/2 كوب دقيق متعدد الأغراض',
      '3 1/2 ملعقة صغيرة بيكنج باودر',
      '1 ملعقة صغيرة ملح',
      "1 ملعقة كبيرة سكر أبيض",
      "1 1/4 كوب حليب",
      '1 بيضة',
      "3 ملاعق كبيرة زبدة مذابة"
    ],
    steps: const [
      'في وعاء كبير، أنخلي الدقيق، البيكنج باودر، الملح والسكر.',
      "       اصنعي حفرة في الوسط واسكبي فيها الحليب والبيض والزبدة المذابة. امزج حتى يصبح ناعمًا.",
      'قم بتسخين صينية أو مقلاة مدهونة بقليل من الزيت على نار متوسطة عالية.',
      " اسكبي الخليط أو اغرفيه على صينية الخبز، باستخدام ما يقرب من ربع كوب لكل فطيرة. غواياكيل، الاكوادور"
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: const [
      'c8',
    ],
    title: 'كاري الدجاج الهندي الكريمي',
    affordability: Affordabilityar.pricey.name,
    complexity: Complexityar.challenging.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: const [
      "4 صدور دجاج",
      "1 بصلة",
      "2 فصوص من الثوم",
      "قطعة زنجبيل",
      "4 ملاعق كبيرة من اللوز",
      "1 ملعقة صغيرة فلفل كايين",
      "500 مل حليب جوز الهند",
    ],
    steps: const [
      "قطع صدر الدجاج وقليه"
          "يطحن البصل والثوم والزنجبيل إلى معجون ويقلى كل شيء",
      "أضف البهارات واقليها",
      "أضيفي صدور الدجاج + 250 مل من الماء واطهي كل شيء لمدة 10 دقائق",
      "أضف حليب جوز الهند",
      "يقدم مع الأرز",
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: const [
      'c9',
    ],
    title: 'سوفلي الشوكولاته',
    affordability: Affordabilityar.affordable.name,
    complexity: Complexityar.hard.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: const [
      "1 ملعقة صغيرة زبدة مذابة",
      "2 ملعقة كبيرة سكر أبيض",
      "2 أونصة 70% شوكولاتة داكنة، مقسمة إلى قطع",
      "1 ملعقة كبيرة زبدة",
      "1 ملعقة كبيرة دقيق متعدد الاستعمالات"
          "4 1/3 ملاعق كبيرة حليب بارد",
      "1 رشة ملح",
      "1 رشة فلفل حريف",
      "1 صفار بيضة كبيرة",
      "2 بياض بيض كبير",
      "1 رشة كريمة التارتار",
      ",1 ملعقة كبيرة سكر أبيض"
    ],
    steps: const [
      " سخني الفرن على حرارة 190 درجة مئوية. قم بتغطية صينية الخبز ذات الحواف بورق البرشمان.",
      "ادهن قاع وجوانب قالبين زبدتين بخفة مع ملعقة صغيرة من الزبدة المذابة وقم بتغطية الجزء السفلي والجوانب حتى الحافة.",
      "  أضف ملعقة كبيرة من السكر الأبيض إلى القوالب. قم بتدوير القوالب حتى يغطي السكر جميع الأسطح"
          "ضعي قطع الشوكولاتة في وعاء خلط معدني.",
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: const [
      'c2',
      'c5',
      'c10',
    ],
    title: 'سلطة الهليون مع الطماطم الكرزية',
    affordability: Affordabilityar.luxurious.name,
    complexity: Complexityar.simple.name,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: const [
      "الهليون الأبيض والأخضر",
      "30 جرام صنوبر",
      "300 جرام طماطم كرزية",
      'سلطة',
      "ملح وفلفل وزيت زيتون"
    ],
    steps: const [
      "يغسل الهليون ويقشر ويقطع"
          "الطهي في الماء المملح"
          "الملح والفلفل الهليون",
      "تحميص الصنوبر",
      "نصف الطماطم",
      "تخلط مع الهليون والسلطة والصلصة"
          "يقدم مع الرغيف الفرنسي"
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  )
];
