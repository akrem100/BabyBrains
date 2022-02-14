import 'dart:async';

import 'package:dot/biblio/biblio_screen.dart';
import 'package:dot/constant.dart';

import 'package:dot/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'components/dot_anim.dart';
import 'fragment/framgment.dart';
import 'home/home_screen.dart';
import 'package:flutter/animation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: routes,
      home: MyHomePage(),
    );
  }
}
