import 'dart:ui';
import 'package:flutter/material.dart';

class TlItem extends StatefulWidget {
  const TlItem({
    Key? key,
  }) : super(key: key);
  @override
  State<TlItem> createState() => _TlItemState();
}

class _TlItemState extends State<TlItem> {
  bool isCheked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, right: 10, left: 10, bottom: 15),
      margin: EdgeInsets.all(MediaQuery.of(context).size.height * .009),
      height: MediaQuery.of(context).size.height * .2,
      width: MediaQuery.of(context).size.width * .20,
      decoration: BoxDecoration(
          border: isCheked
              ? Border.all(color: Colors.pink[600]!.withOpacity(.5), width: 1)
              : null,
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.transparent,
              child: Container(
                margin: const EdgeInsets.only(top: 5, left: 8, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Flexible(
                      flex: 2,
                      child: Text(
                        "Talk an sing to your baby Talk an sing to",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Flexible(
                        flex: 3,
                        child: Container(
                          margin: const EdgeInsets.only(top: 9),
                          width: MediaQuery.of(context).size.width * .2,
                          height: MediaQuery.of(context).size.height * .8,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isCheked = !isCheked;
                              });
                            },
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
                        )),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.zero,
              // color: Colors.blue,
              padding: EdgeInsets.zero,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage("assets/images/image1.png"),
                  //  width: MediaQuery.of(context).size.width * .4,
                ),
              ),
            ),
          )
          // Container(
          //   color: Colors.red,
          //   margin: const EdgeInsets.only(left: 5, top: 35),
          //   child:
          //       Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //     const Flexible(
          //         child: Text(
          //       "Talk and sing to your Baby",
          //       overflow: TextOverflow.ellipsis,
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          //     )),
          //     SizedBox(
          //       height: MediaQuery.of(context).size.height * .029,
          //     ),
          //     Container(
          //       margin: const EdgeInsets.only(top: 20),
          //       width: MediaQuery.of(context).size.width * .25,
          //       height: MediaQuery.of(context).size.height * .04,
          //       child: ElevatedButton(
          //         onPressed: () {},
          //         child: const Text("done"),
          //         style: ElevatedButton.styleFrom(
          //             primary: Colors.teal[400]!.withOpacity(.7)),
          //       ),
          //     )
          //   ]),
          // ),
          // SizedBox(width: MediaQuery.of(context).size.width * .10),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Image(
          //     image: const AssetImage("assets/mother.jpg"),
          //     height: MediaQuery.of(context).size.height * .4,
          //   ),
          // )
        ],
      ),
    );
  }
}
