import 'package:flutter/material.dart';

double? add(index) {
  double a;
  if (index == 0) {
    return a = -0.83;
  } else if (index == 1) {
    return a = -0.42;
  } else if (index == 2) {
    return a = -0.01;
  } else if (index == 3) {
    return a = 0.4;
  } else if (index == 4) {
    return a = 0.8;
  } else
    return null;
}

const kTileHeight = 50.0;
const inProgressColor = Colors.black87;
const todoColor = Color(0xffd1d2d7);
