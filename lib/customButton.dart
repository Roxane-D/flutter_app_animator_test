import 'package:flutter/material.dart';

Widget customButton = RaisedButton(
  onPressed: () {},
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
  textColor: Colors.white,
  padding: const EdgeInsets.all(0.0),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.1),
          spreadRadius: 3,
          blurRadius: 15,
          offset: Offset(0, 3),
        ),
      ],
      gradient: LinearGradient(
        colors: <Color>[
          Colors.pink[900],
          Colors.purple,
          Colors.blue,
        ],
      ),
    ),
    padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
    child: const Text(
      'Recharger les données',
      style: TextStyle(fontSize: 20),
    ),
  ),
);
