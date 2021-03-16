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
          child: AnimatedLogo(),
        ),
      ),
    );
  }
}

class AnimatedLogo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Animator<double>(
      tween: Tween<double>(begin: 0, end: 200),
      cycles: 0,
      duration: Duration(seconds: 2),
      builder: (context, animatorState, child) => Container(
        height: animatorState.value,
        width: animatorState.value,
        child: FlutterLogo(),
      ),
    );
  }
}
