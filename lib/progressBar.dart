import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

Widget slider = SleekCircularSlider(
  appearance: CircularSliderAppearance(
    size: 250,
    customWidths: CustomSliderWidths(progressBarWidth: 25),
    infoProperties: InfoProperties(
      mainLabelStyle: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w300,
      ),
      bottomLabelText: "Complété",
      bottomLabelStyle: TextStyle(
        fontSize: 25,
        color: Colors.white70,
        fontWeight: FontWeight.w300,
      ),
    ),
  ),
  min: 0,
  max: 100,
  initialValue: 79,
);