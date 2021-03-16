import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_animator_test/customButton.dart';
import 'package:flutter_app_animator_test/progressBar.dart';
import 'package:flutter_app_animator_test/topIcons.dart';
import 'package:flutter_app_animator_test/infoBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Animation Dynamique';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          title: Text('Animation Dynamique'),
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(0.8),
          actions: [IconButton(icon: Icon(Icons.refresh), onPressed: () {})],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black87,
          child: SingleChildScrollView(
            child: Column(
              children: [
                DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: topIcons,
                ),
                 DelayedDisplay(
                   delay: Duration(milliseconds: 1000),
                   child: slider,
                ),
                DelayedDisplay(
                delay: Duration(milliseconds: 1500),
                child: infoBox,
                ),
                DelayedDisplay(
                delay: Duration(milliseconds: 2000), child: customButton),
                SizedBox(
                   height: 50,
                 )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

