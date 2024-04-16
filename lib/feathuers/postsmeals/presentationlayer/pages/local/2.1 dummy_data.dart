import 'package:flutter/material.dart';




const availableCategories = [
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
class Category{
  final String id;
  final String title;
  final Color color;

 const Category({required this.id, required this.title, required this.color});
}


const availableCategoriesar = [
  Category(
    id: 'c1',
    title: 'ايطالي',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'سريعة وسهلة',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'الهامبرغر',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'ألمانية',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'خفيف وجميل',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'غَرِيب',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'إفطار',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'الآسيوية',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'فرنسي',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'وجبات الصيف',
    color: Colors.teal,
  ),
];