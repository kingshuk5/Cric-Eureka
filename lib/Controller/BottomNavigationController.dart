import 'package:cric_eureka/Pages/ArticlePage/ArticalPage.dart';
import 'package:cric_eureka/Pages/CricketPage/CricketPage.dart';
import 'package:cric_eureka/Pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BottomNavController extends GetxController{
  RxInt index=0.obs;

  var pages =[
    HomePage(),
    Articalpage(),
    Cricketpage()
  ];


}