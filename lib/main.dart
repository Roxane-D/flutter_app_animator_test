import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Animation Dynamique'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconLogo(
                iconName: Icons.directions_walk,
                iconColor: Colors.tealAccent[700],
                animationDuration: Duration(milliseconds: 500),
              ),
              IconLogo(
                iconName: Icons.directions_run,
                iconColor: Colors.lightBlue,
                animationDuration: Duration(milliseconds: 600),
              ),
              IconLogo(
                iconName: Icons.directions_bike,
                iconColor: Colors.purple,
                animationDuration: Duration(milliseconds: 700),
              ),
              IconLogo(
                iconName: Icons.favorite,
                iconColor: Colors.pink,
                animationDuration: Duration(milliseconds: 800),
              ),
              IconLogo(
                iconName: Icons.more_vert,
                iconColor: Colors.grey[800],
                animationDuration: Duration(milliseconds: 900),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconLogo extends StatelessWidget {
  final IconData iconName;
  final Color iconColor;
  final Duration animationDuration;

  const IconLogo({Key key, this.iconName, this.iconColor, this.animationDuration}) : super(key: key);

  Widget build(BuildContext context) {
    return Animator<double>(
      tween: Tween<double>(begin: 0, end: 50),
      cycles: 1,
      duration: animationDuration,
      builder: (context, animatorState, child) => Container(
        width: animatorState.value,
        height: animatorState.value,
        decoration: BoxDecoration(
          color: iconColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 15,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Icon(
          iconName,
          color: Colors.white,
          size: animatorState.value / 2,
        ),
      ),
    );
  }
}
