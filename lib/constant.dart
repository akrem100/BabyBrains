import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';

import 'model/processCard.dart';

double? add(index) {
  double a;
  if (index == 0) {
    return a = -0.77;
  } else if (index == 1) {
    return a = -0.38;
  } else if (index == 2) {
    return a = -0.01;
  } else if (index == 3) {
    return a = 0.37;
  } else if (index == 4) {
    return a = 0.74;
  } else
    return null;
}

double? expe(x) {
  for (var i = -8.00; i < 200.00; i++) {
    return x;
  }
}

const kTileHeight = 50.0;
const inProgressColor = Colors.black87;
const todoColor = Color(0xffd1d2d7);

enum Pages {
  DeliveryTime,
  AddAddress,
  Summary,
}
List<Color> colors = [Colors.red, Colors.green, Colors.pinkAccent, Colors.blue];

List<ProcessCard> _getProcess() {
  List<ProcessCard> processCard = [];

  processCard.add(ProcessCard("Issue Creation",
      "The author creates a new issue.", Icons.adjust_rounded));
  processCard.add(ProcessCard(
      "Topic Approval", "The author waist for 3 - 5 days.", Icons.check));
  processCard.add(ProcessCard("Article Writing", "The author writes the topic.",
      Icons.border_color_rounded));
  processCard.add(ProcessCard("PR Creation",
      "The author creates a new Pull Request", Icons.call_merge_rounded));
  processCard.add(ProcessCard("Review Process",
      "This ensure article is correct", Icons.change_circle_rounded));
  processCard.add(ProcessCard(
      "Final Review", "The article is polished", Icons.bookmark_add_rounded));
  return processCard;
}
