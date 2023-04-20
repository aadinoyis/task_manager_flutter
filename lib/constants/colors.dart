import 'package:flutter/material.dart';

const purple = Color.fromARGB(255, 68, 23, 98);
const blackColor = Color.fromARGB(255, 56, 10, 71);
const whiteColor = Color.fromARGB(255, 232, 211, 252);

const colorGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [0.01, 0.2, 0.8],
  colors: [
    Colors.white,
    whiteColor,
    Color.fromARGB(255, 187, 168, 212),
  ],
);

double barHeight = 100;
