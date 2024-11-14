import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../HomePage/HomePage.dart';

class Searchwidget extends StatelessWidget {
  const Searchwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        color:Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Row(children: [
        InkWell(
          onTap: (){
            Get.back();
          },
          child: Container(
            child: Row(
              children: [
                Icon(Icons.arrow_back_sharp,
                  color:Theme.of(context).colorScheme.onPrimaryContainer,),
              ],
            ),
          ),
        ),
        Expanded(child: TextField(
          decoration: InputDecoration(
            hintText: "Search News...",
            prefixIcon: Icon(Icons.search),
            fillColor:
            Theme.of(context).colorScheme.secondaryContainer,
            border: InputBorder.none,
          ),
        ),),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: Icon(Icons.search),
        )
      ],),
    );
  }
}
