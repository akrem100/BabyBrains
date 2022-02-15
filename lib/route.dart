import 'package:flutter/material.dart';
import 'biblio/biblio_screen.dart';
import 'fragment/framgment.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  MyHomePage.routeName: (context) => MyHomePage(),
  Biblio_Screen.routeName: (context) => Biblio_Screen(),
};
