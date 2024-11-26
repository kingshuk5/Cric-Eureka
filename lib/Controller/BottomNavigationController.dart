import 'package:cric_eureka/Pages/ArticlePage/ArticalPage.dart';
import 'package:cric_eureka/Pages/CricketPage/CricketPage.dart';
import 'package:cric_eureka/Pages/HomePage/HomePage.dart';
import 'package:cric_eureka/Pages/NewsDetails/NewsDetails.dart';
import 'package:cric_eureka/Pages/SignInPage/Screen/LoginScreen.dart';
import 'package:cric_eureka/Pages/SignInPage/Screen/SignUpScreen.dart';
import 'package:cric_eureka/Pages/SignInPage/Screen/SignedInScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BottomNavController extends GetxController{
  RxInt index=0.obs;

  var pages =[
    HomePage(),
    Articalpage(),
    Cricketpage(),
    Signedinscreen(),
  ];


}