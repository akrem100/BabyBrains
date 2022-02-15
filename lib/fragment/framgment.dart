import 'package:flutter/material.dart';

import '../biblio/biblio_screen.dart';
import '../components/dot_anim.dart';
import '../home/home_screen.dart';

class MyHomePage extends StatefulWidget {
  static String routeName = "/home";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int currentPage = 0;
  int _selectedIndex = 0;
  double wid = 6;
  Offset _offset = Offset.zero;

  late AnimationController ccontroller;
  late Animation sizeAnimation;

  void initState() {
    super.initState();

    ccontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    sizeAnimation = Tween<double>(begin: 6, end: 100).animate(ccontroller);
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      ccontroller = AnimationController(
          vsync: this, duration: Duration(milliseconds: 500), upperBound: 1);

      ccontroller.forward(from: -0.5);
      sizeAnimation = TweenSequence<double>(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 6.0, end: 50.0),
            weight: 0.5,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 50.0, end: 6.0),
            weight: 0.5,
          ),
        ],
      ).animate(ccontroller);
      print(sizeAnimation.value.toString() + "1234");
    });
  }

  List<Widget> widgetOptions = <Widget>[
    Home_Screen(),
    Biblio_Screen(),
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 120, // Set this height
        flexibleSpace: SafeArea(
          child: Container(
            height: 120,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 8, bottom: 10),
                      child: Text(
                        "Welcome Sarah !",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Icon(
                        Icons.notifications_active_outlined,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      hoverColor: Colors.black,
                      onTap: () => {},
                      child: Container(
                          width: 160,
                          height: 45,
                          child: const Center(
                              child: Text(
                            'Activities',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                          decoration: ShapeDecoration(
                              color: Colors.pink[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      width: 0.1, color: Colors.pink)))),
                    ),
                    Container(
                        width: 160,
                        height: 45,
                        child: const Center(child: Text("Inforamtions")),
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side: BorderSide(
                                    width: 1, color: Colors.black)))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 65,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: 'cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.business,
                    color: Colors.black,
                  ),
                  label: 'formule',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.school,
                    color: Colors.black,
                  ),
                  label: 'promotion',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  label: 'panier',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_balance_rounded,
                    color: Colors.black,
                  ),
                  label: 'panier',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              onTap: _onItemTapped,
            ),
            Dot_anim(
                ccontroller: ccontroller,
                sizeAnimation: sizeAnimation,
                index: _selectedIndex),
          ],
        ),
      ),
    );
  }

  int trans(int index) {
    return currentPage = index;
  }
}
