import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column();
    //Container(
    //   height: 200,
    //   width: 400,
    //   decoration: BoxDecoration(
    //     border: Border.all(color: const Color.fromRGBO(235, 113, 170, 2)),
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    //   margin: const EdgeInsets.fromLTRB(18.0, 70, 100, 350),
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.end,
    //     children: [
    //       SizedBox(
    //         width: 140,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.end,
    //           children: [
    //             Align(
    //               alignment: Alignment.topRight,
    //               child: Padding(
    //                 padding: const EdgeInsets.all(5.0),
    //                 child: const Text(
    //                   "Talk and stay to you baby ",
    //                   style: TextStyle(fontSize: 20.0),
    //                 ),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: InkWell(
    //                 child: Container(
    //                   width: 100,
    //                   height: 20,
    //                   decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(2),
    //                       color: Colors.teal[400],
    //                       border: Border.all(
    //                           color: const Color.fromRGBO(235, 113, 170, 2))),
    //                   child: const Center(
    //                       child: const Text("Done",
    //                           style: TextStyle(color: Colors.white))),
    //                 ),
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         width: 130,
    //         child: Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               image: DecorationImage(
    //                 fit: BoxFit.cover,
    //                 image: AssetImage("assets/images/image1.png"),
    //               ),
    //             ),
    //             // child: Image.asset(
    //             //   "assets/images/image1.png",
    //             // ),
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
