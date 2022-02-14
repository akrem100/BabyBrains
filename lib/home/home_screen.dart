import 'package:flutter/material.dart';

import 'components/body.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    print("heloo");
    return Scaffold(
      body: Body(),
    );
  }
}
