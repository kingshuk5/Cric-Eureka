import 'package:cric_eureka/Pages/CricketDetails/Widgets/Timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controller/CricketController.dart';
class Cricdetails extends StatelessWidget {
  const Cricdetails ({super.key});

  @override
  Widget build(BuildContext context) {
    Cricketcontroller cricketcontroller= Get.put(Cricketcontroller());
      return
        Obx(()=> Column(
            children: cricketcontroller.TimeLineList.map((element) {
              return Flexible(
                child: TimelineScreen(
                  TimeLinestatus: element.timeline.toString(),
                ),
              );
            }).toList(),
          )
        );
  }
}
