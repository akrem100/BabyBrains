import 'package:dot/constant.dart';

import 'package:dot/home/components/timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timelines/timelines.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/item.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(color: Colors.grey.withOpacity(.1)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TimeLineItem(),
              TimeLineItem(),
              TimeLineItem(),
              TimeLineItem(),
            ],
          ),
        ));

    // Column(
    //   children: [
    //     Container(

    //       color: Colors.black,

    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: CustomPaint(painter: LineDashedPainter()),
    //     ),
    //   ],
    // );

    //Container(
    //   margin: const EdgeInsets.fromLTRB(20, 1, 230, 1),
    //   child: SingleChildScrollView(
    //     child: FixedTimeline.tileBuilder(
    //       builder: TimelineTileBuilder(
    //         //connectorStyle: ConnectorStyle.dashedLine,
    //         startConnectorBuilder: (context, index) => SizedBox(
    //           height: 20.0,
    //           width: 50,
    //           child: DashedLineConnector(
    //             dash: 11,
    //             endIndent: 5,
    //             indent: 5,
    //           ),
    //         ),
    //         endConnectorBuilder: (context, index) => SizedBox(
    //           height: 20.0,
    //           width: 50,
    //           child: DashedLineConnector(
    //             endIndent: 5,
    //             indent: 5,
    //             dash: 11,
    //             space: 80,
    //           ),
    //         ),
    //         indicatorPositionBuilder: (context, index) => 0.5,
    //         indicatorBuilder: (context, index) => Positioned(
    //           child: Transform.rotate(
    //             angle: 19,
    //             child: SvgPicture.asset(
    //               "assets/images/time2.svg",
    //               alignment: Alignment.centerLeft,
    //               width: 80,
    //             ),
    //           ),
    //         ),
    //         contentsAlign: ContentsAlign.basic,
    //         oppositeContentsBuilder: (context, index) => Transform.rotate(
    //           angle: 17.2,
    //         ),
    //         contentsBuilder: (context, index) => Row(
    //           children: [
    //             Text('Contents'),
    //             SizedBox(height: 5),
    //           ],
    //         ),
    //         itemExtent: 100.0,
    //         itemCount: 10,
    //       ),
    //       theme: TimelineThemeData(color: Color.fromRGBO(235, 113, 170, 2)),
    //     ),
    //   ),
    // );
  }
}

class LineDashedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..strokeWidth = 1;
    paint.color = Colors.pink;
    var max = 500;
    var dashWidth = 10;
    var dashSpace = 9;
    double startY = 4;
    while (max >= 0) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      final space = (dashSpace + dashWidth);

      startY += space;
      max -= space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
