import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Components/NewsTileLoading.dart';
import '../../Controller/NewsController.dart';
import '../DropDown/DrawerBar.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios_outlined,
                            color:Theme.of(context).colorScheme.onPrimaryContainer,),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [

                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset(
                          'assets/NGO_Eureka_copy-removebg-preview.png',
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "NEWS",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          letterSpacing:1.5,
                        ),),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(DrawerBar());
                    },
                    child: Container(
                      width: 50,
                      height: 50,

                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Icon(
                        Icons.menu,
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                    ),
                  ),
                ],),
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
                        imageUrl: element.imageUrl ?? "https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=",
                        title: element.title??"",
                        description: element.description ??"",
                        time: element.updatedAt??"",
                        date:element.updatedAt??"",
                      ),).toList()
                  ), ),
                  Obx(()=>newscontroller.isSportsList.value
                      ? Column(children: [
                        Newstileloading(),
                        Newstileloading(),
                        Newstileloading(),
                  ],)
                      : Column(
                      children: newscontroller.SportsList.map((element)=>Newstile(
                        ontap: (){
                          Get.to(Newsdetails(
                            news: element,
                          ));
                        },
                        imageUrl: element.imageUrl ?? "https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=",
                        title: element.title??"",
                        description: element.description ??"",
                        time: element.updatedAt??"",
                        date:element.updatedAt??"",
                      ),).toList()
                  ), ),

                  Obx(()=>newscontroller.isEducationList.value
                      ? Column(children: [
                    Newstileloading(),
                    Newstileloading(),
                    Newstileloading(),
                  ],)
                      : Column(
                      children: newscontroller.EducationList.map((element)=>Newstile(
                        ontap: (){
                          Get.to(Newsdetails(
                            news: element,
                          ));
                        },
                        imageUrl: element.imageUrl ?? "https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=",
                        title: element.title??"",
                        description: element.description ??"",
                        time:element.updatedAt??"",
                        date:element.createdAt??"",
                      ),).toList()
                  ), ),

                  Obx(()=>newscontroller.isWelfareList.value
                      ? Column(children: [
                    Newstileloading(),
                    Newstileloading(),
                    Newstileloading(),
                  ],)
                      : Column(
                      children: newscontroller.WelfareList.map((element)=>Newstile(
                        ontap: (){
                          Get.to(Newsdetails(
                            news: element,
                          ));
                        },
                        imageUrl: element.imageUrl ?? "https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=",
                        title: element.title??"",
                        description: element.description ??"",
                        time:element.updatedAt??"",
                        date:element.createdAt??"",
                      ),).toList()
                  ), ),

                  Obx(()=>newscontroller.isOthersList.value
                      ? Column(children: [
                    Newstileloading(),
                    Newstileloading(),
                    Newstileloading(),
                  ],)
                      : Column(
                      children: newscontroller.OthersList.map((element)=>Newstile(
                        ontap: (){
                          Get.to(Newsdetails(
                            news: element,
                          ));
                        },
                        imageUrl: element.imageUrl ?? "https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=",
                        title: element.title??"",
                        description: element.description ??"",
                        time:element.updatedAt??"",
                        date:element.createdAt??"",
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
