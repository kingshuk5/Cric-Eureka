import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Model/NewsModel.dart';


class Newsdetails extends StatelessWidget {
  final NewsModel news;
  const Newsdetails({super.key,required this.news,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new,
                              color:Theme.of(context).colorScheme.onPrimaryContainer,),
                            Text("Back"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 330 ,
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(children: [
                    Expanded(child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        news.imageUrl??"https://www.gasso.com/wp-content/uploads/2017/04/noimage.jpg",
                        fit:BoxFit.cover,
                      ),
                    ),
                    )
                  ],),
                ),
                SizedBox(height: 20),
                Text(
                   news.title??"" ,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(
                    news.updatedAt?.substring(0,10)??"",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    news.place??"",
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ],),
                SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                       news.description??"" ,
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ],
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
