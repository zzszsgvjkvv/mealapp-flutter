import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projectclean/feathuers/postsmeals/presentationlayer/pages/categories.dart';

class MyCustomSplashScreen extends StatefulWidget {
@override
_MyCustomSplashScreenState createState() => _MyCustomSplashScreenState();
}
class _MyCustomSplashScreenState extends State<MyCustomSplashScreen>
with TickerProviderStateMixin {
double _fontSize = 2;
double _containerSize = 1.5;
double _textOpacity = 0.0;
double _containerOpacity = 0.0;
late AnimationController _controller;
late Animation<double> animation1;
@override
void initState() {
super.initState();
_controller =
AnimationController(vsync: this, duration: Duration(seconds: 3));
animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
parent: _controller, curve: Curves.fastLinearToSlowEaseIn))
..addListener(() {
setState(() {
_textOpacity = 1.0;
});
});
_controller.forward();
Timer(Duration(seconds: 2), () {
setState(() {
_fontSize = 1.06;
});
});
Timer(Duration(seconds: 2), () {
setState(() {
_containerSize = 2;
_containerOpacity = 1;
});
});
Timer(Duration(seconds: 4), () {
setState(() {
Navigator.pushReplacement(context, PageTransition(Homepage()));
});
});
}
@override
void dispose() {
_controller.dispose();
super.dispose();
}
@override
Widget build(BuildContext context) {
double _width = MediaQuery.of(context).size.width;
double _height = MediaQuery.of(context).size.height;
return Scaffold(
backgroundColor: Colors.deepPurple,
body: Stack(
children: [
Column(
children: [
AnimatedContainer(
duration: Duration(milliseconds: 2000),
curve: Curves.fastLinearToSlowEaseIn,
height: _height / _fontSize
),
AnimatedOpacity(
duration: Duration(milliseconds: 1000),
opacity: _textOpacity,
child: Text(
'YOUR APP\'S NAME',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: animation1.value,
),
),
),
],
),
Center(
child: AnimatedOpacity(
duration: Duration(milliseconds: 2000),
curve: Curves.fastLinearToSlowEaseIn,
opacity: _containerOpacity,
child: AnimatedContainer(
duration: Duration(milliseconds: 2000),
curve: Curves.fastLinearToSlowEaseIn,
height: _width / _containerSize,
width: _width / _containerSize,
alignment: Alignment.center,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(30),
),
// child: Image.asset('assets/images/file_name.png')
child: Text(
'YOUR APP\'S LOGO',
),
),
),
),
],
),
);
}
}
class PageTransition extends PageRouteBuilder {
final Widget page;
PageTransition(this.page)
: super(
pageBuilder: (context, animation, anotherAnimation) => page,
transitionDuration: Duration(milliseconds: 2000),
transitionsBuilder: (context, animation, anotherAnimation, child) {
animation = CurvedAnimation(
curve: Curves.fastLinearToSlowEaseIn,
parent: animation,
);
return Align(
alignment: Alignment.bottomCenter,
child: SizeTransition(
sizeFactor: animation,
child: page,
axisAlignment: 0,
),
);
},
);
}
class SecondPages extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
appBar: AppBar(
backgroundColor: Colors.deepPurple,
centerTitle: true,
title: Text(
'YOUR APP\'S NAME',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 20,
),
), systemOverlayStyle: SystemUiOverlayStyle.light,
),
);
}
}