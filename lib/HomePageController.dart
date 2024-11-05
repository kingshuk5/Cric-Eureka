import 'package:cric_eureka/Components/NavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Controller/BottomNavigationController.dart';

class Homepagecontroller extends StatelessWidget {
  const Homepagecontroller({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller=Get.put(BottomNavController());
    return Scaffold(
      floatingActionButton: MyBottomNav(),
      body: Obx(()=>controller.pages[controller.index.value]),

    );
  }
}
