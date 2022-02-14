import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/themes/xcode.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TimeLineItem extends StatefulWidget {
  const TimeLineItem({
    Key? key,
  }) : super(key: key);

  @override
  State<TimeLineItem> createState() => _TlItemState();
}

class _TlItemState extends State<TimeLineItem> {
  bool isCheked = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                child: Container(
                    margin: EdgeInsets.only(left: size.width * .060, right: 20),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(235, 113, 170, 2),
                      border: Border.all(
                          width: 2, color: Color.fromRGBO(235, 113, 170, 2)),
                    ))),
            const Text(
              "30.5.2022",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        item(size: size, isCheked: isCheked),
        item(size: size, isCheked: isCheked),
        item(size: size, isCheked: isCheked)
      ],
    );
  }
}

class item extends StatelessWidget {
  const item({
    Key? key,
    required this.size,
    required this.isCheked,
  }) : super(key: key);

  final Size size;
  final bool isCheked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        width: MediaQuery.of(context).size.width,
        child: Row(children: [
          Flexible(
              flex: 1,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width * .1, vertical: 0),
                      child: const DottedLine(
                        dashLength: 10,
                        dashColor: Color.fromRGBO(235, 113, 170, 2),
                        direction: Axis.vertical,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    child: SvgPicture.asset(
                      "assets/images/time2.svg",
                      width: size.width * .08,
                      height: size.height * .085,
                    ),
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(right: 25),
            width: size.width * .70,
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Container(
              color: Colors.white.withOpacity(.2),
              child: Stack(
                children: [
                  Positioned(
                      top: 10,
                      left: 10,
                      bottom: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("welcome "),
                          SizedBox(
                            height: 40,
                          ),
                          InkWell(
                              child: Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.teal[300]),
                            child: Center(
                              child: const Text(
                                "Done",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ))
                        ],
                      )),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              fit: BoxFit.cover,
                              image:
                                  const AssetImage("assets/images/image1.png"),
                              height: size.height,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ])
                ],
              ),
            ),

            // ItemDetails(isCheked: isCheked, size: size),
          ),
        ]),
      ),
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    Key? key,
    required this.isCheked,
    required this.size,
  }) : super(key: key);

  final bool isCheked;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "Talk an sing to your baby vc ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: isCheked
                        ? const Text("Done")
                        : const Text(
                            "To do",
                            style: TextStyle(color: Colors.grey),
                          ),
                    style: isCheked
                        ? ElevatedButton.styleFrom(
                            primary: Colors.teal[400]!.withOpacity(.6))
                        : ElevatedButton.styleFrom(
                            primary: Colors.white,
                            side: const BorderSide(
                                width: 0.5, color: Colors.grey),
                            shadowColor: Colors.transparent),
                  ),
                ),
              ]),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              fit: BoxFit.cover,
              image: const AssetImage("assets/images/image1.png"),
              width: size.width * .25,
              height: size.height,
            ),
          ),
        ),
      ],
    );
  }
}
