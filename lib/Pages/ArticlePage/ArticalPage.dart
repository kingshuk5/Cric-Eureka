import 'package:cric_eureka/Pages/ArticlePage/Widgets/SearchWidget.dart';
import 'package:cric_eureka/Pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Components/NavigationBar.dart';
import '../../Components/NewsTileLoading.dart';
import '../../Controller/NewsController.dart';
import '../HomePage/Widgets/Newstile.dart';
import '../NewsDetails/NewsDetails.dart';

class Articalpage extends StatelessWidget {
  const Articalpage({super.key});

  @override
  Widget build(BuildContext context) {
    Newscontroller newscontroller= Get.put(Newscontroller());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Searchwidget(),
              SizedBox(height: 20),
              Column(
                children: [
                  Obx(()=>newscontroller.isTrendingLoading.value
                      ? Column(children: [
                    Newstileloading(),
                    Newstileloading(),
                          Newstileloading(),
                  ],)
                      : Column(
                      children: newscontroller.trendingNewsList.map((element)=>Newstile(
                        ontap: (){
                          Get.to(Newsdetails(
                            news: element,
                          ));
                        },
                        imageUrl: element.urlToImage ?? "https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=",
                        title: element.title!,
                        description: element.description ??"",
                        time: "Trending No 1",
                        date:element.publishedAt!,
                      ),).toList()
                  ), ),
                  Obx(()=>newscontroller.isNewsList.value
                      ? Column(children: [
                        Newstileloading(),
                        Newstileloading(),
                        Newstileloading(),
                  ],)
                      : Column(
                      children: newscontroller.NewsList.map((element)=>Newstile(
                        ontap: (){
                          Get.to(Newsdetails(
                            news: element,
                          ));
                        },
                        imageUrl: element.urlToImage ?? "https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=",
                        title: element.title!,
                        description: element.description ??"",
                        time: "Trending No 1",
                        date:element.publishedAt!,
                      ),).toList()
                  ), ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
