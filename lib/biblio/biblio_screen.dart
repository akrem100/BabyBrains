import '../home/components/body.dart';
import 'package:flutter/material.dart';

class Biblio_Screen extends StatefulWidget {
  static String routeName = "/bib";
  @override
  _Biblio_ScreenState createState() => _Biblio_ScreenState();
}

class _Biblio_ScreenState extends State<Biblio_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
