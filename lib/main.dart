import 'package:animate_do/animate_do.dart';
import 'package:animator/animator.dart';
import 'package:flutter/cupertino.dart';
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
          child: Container(
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LineData(
                  iconName: Icons.directions_walk,
                  lineColor: Colors.purple,
                  lineTitle: 'Pas',
                  lineNumber: '12879',
                  animationDuration: Duration(milliseconds: 500),
                ),
                SizedBox(height: 30),
                LineData(
                  iconName: Icons.fastfood,
                  lineColor: Colors.orange,
                  lineTitle: 'Calories',
                  lineNumber: '987',
                  animationDuration: Duration(milliseconds: 700),
                ),
                SizedBox(height: 30),
                LineData(
                  iconName: Icons.directions_bike,
                  lineColor: Colors.blue,
                  lineTitle: 'Km de vélo',
                  lineNumber: '2.7',
                  animationDuration: Duration(milliseconds: 900),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LineData extends StatelessWidget {
  final IconData iconName;
  final Color lineColor;
  final String lineTitle;
  final String lineNumber;
  final Duration animationDuration;

  const LineData({
    Key key,
    this.iconName,
    this.lineColor,
    this.lineTitle,
    this.lineNumber,
    this.animationDuration,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return SlideInLeft(
      duration: animationDuration,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: lineColor,
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
              size: 35,
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lineNumber,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Text(
                lineTitle,
                style: TextStyle(
                  color: lineColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
