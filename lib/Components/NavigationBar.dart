import 'package:cric_eureka/Controller/BottomNavigationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller =Get.put(BottomNavController());
    return  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            width: 300 ,
            height: 60,
            decoration: BoxDecoration(
              color:Theme.of(context).colorScheme.surface,
              borderRadius:BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    controller.index.value=0;
                  },
                  child: Obx(()=>AnimatedContainer(
                    duration:Duration(milliseconds:300 ) ,
                    curve: Curves.bounceInOut,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color:controller.index.value==0
                          ? Theme.of(context).colorScheme.primary
                          :null,
                      borderRadius:BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.home,
                      size: 35,
                      color:controller.index.value==0
                          ? Theme.of(context).colorScheme.onSurface
                          :Theme.of(context).colorScheme.secondary,
                    ),
                  ),),
                ),
                InkWell(
                  onTap: (){
                    controller.index.value=1;
                  },
                  child:Obx(()=> AnimatedContainer(
                    duration:Duration(milliseconds:300 ) ,
                    curve: Curves.bounceInOut,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color:controller.index.value==1
                          ? Theme.of(context).colorScheme.primary
                          :null,
                      ///color: Theme.of(context).colorScheme.primary,
                      borderRadius:BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.newspaper,
                        size: 32,
                        color:controller.index.value==1
                        ? Theme.of(context).colorScheme.onSurface
                        :Theme.of(context).colorScheme.secondary,
                  ),
                ),),
              ),
                InkWell(
                  onTap: (){
                    controller.index.value=2;
                  },
                  child: Obx(()=>AnimatedContainer(
                    duration:Duration(milliseconds:300 ) ,
                    curve: Curves.bounceInOut,
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color:controller.index.value==2
                          ? Theme.of(context).colorScheme.primary
                          :null,
                      //color: Theme.of(context).colorScheme.primary,
                      borderRadius:BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.sports_cricket,
                        size: 35,
                        color:controller.index.value==2
                        ? Theme.of(context).colorScheme.onSurface
                        :Theme.of(context).colorScheme.secondary,
                  ),
                ),),
                ),

              ],
            ),
          ),
        ],
      );

  }
}
