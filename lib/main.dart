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
      duration: Duration(seconds: 1),
      builder: (context, animatorState, child) => Opacity(
        opacity: animatorState.value / 1000,
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}
