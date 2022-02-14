import 'package:flutter/material.dart';

import '../constant.dart';

class Dot_anim extends StatelessWidget {
  const Dot_anim({
    Key? key,
    required this.ccontroller,
    required this.sizeAnimation,
    required this.index,
  }) : super(key: key);

  final AnimationController ccontroller;
  final Animation sizeAnimation;
  final int index;

  @override
  Widget build(BuildContext context) {
    print(index);

    return AnimatedBuilder(
      animation: ccontroller,
      builder: (BuildContext context, Widget? child) {
        return Container(
            color: Colors.white,
            child: AnimatedAlign(
                alignment: Alignment(add(index)!, 0),
                // index == 0 ? Alignment(-1, 0) : Alignment(1, 0),
                duration: Duration(milliseconds: 450),
                // curve: Curves.bounceInOut,
                child: Container(
                    margin: EdgeInsets.only(left: 3),
                    height: 5,
                    width: sizeAnimation.value,
                    decoration: ShapeDecoration(
                        color: Colors.pink[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            side:
                                BorderSide(width: 30, color: Colors.blue))))));
      },
    );
  }
}
