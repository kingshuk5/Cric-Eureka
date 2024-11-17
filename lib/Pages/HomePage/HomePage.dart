import 'package:cric_eureka/Components/NewsTileLoading.dart';
import 'package:cric_eureka/Components/TrendingLoadingCard.dart';
import 'package:cric_eureka/Controller/NewsController.dart';
import 'package:cric_eureka/Pages/ArticlePage/ArticalPage.dart';
import 'package:cric_eureka/Pages/DropDown/DrawerBar.dart';
import 'package:cric_eureka/Pages/HomePage/Widgets/trendingCard.dart';
import 'package:cric_eureka/Pages/NewsDetails/NewsDetails.dart';
import 'package:flutter/material.dart';
import 'package:cric_eureka/Pages/HomePage/Widgets/Newstile.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget{
  const  HomePage({super.key});

  get newValue => null;
  @override
  Widget build(BuildContext context){
    Newscontroller newscontroller= Get.put(Newscontroller());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image.asset(
                      'assets/NGO_Eureka_copy-removebg-preview.png',
                    ),
                  ),
                Text(
                  "NGO Eureka",
                   style: TextStyle(
                     fontSize: 25,
                     fontFamily: "Poppins",
                     fontWeight: FontWeight.w600,
                     letterSpacing:1.5,
                   ),),
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
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Our Activities",
                  style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  InkWell(
                    onTap:() {
                      Get.to(Articalpage());
                    },
                    child: Text("See All",
                    style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(()=>newscontroller.isTrendingLoading.value
                    ? Row(children: [
                      Trendingloadingcard(),
                      Trendingloadingcard(),
                ],)
                    :Row(
                    children: newscontroller.trendingNewsList5.map((element)=> Trendingcard(
                    ontap: (){
                      Get.to(Newsdetails(
                        news: element,
                      ));
                    },
                    imageUrl: element.imageUrl??"https://www.gasso.com/wp-content/uploads/2017/04/noimage.jpg",
                    title: element.title! ,
                    description: element.description!,
                    date: element.updatedAt!,
                    place: element.place!,
                  ),
                  ).toList(),
                ),)
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sports Activities",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  InkWell(
                    onTap:() {
                      Get.to(Articalpage());
                    },
                    child: Text("See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Obx(()=>newscontroller.isSportsList.value
                  ? Column(children: [
                    Newstileloading(),
                    Newstileloading(),
                    Newstileloading(),
              ],)
                  : Column(
                  children: newscontroller.SportsList5.map((element)=>Newstile(
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
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Education Activities",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  InkWell(
                    onTap:() {
                      Get.to(Articalpage());
                    },
                    child: Text("See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Obx(()=>newscontroller.isEducationList.value
                  ? Column(children: [
                Newstileloading(),
                Newstileloading(),
                Newstileloading(),
              ],)
                  : Column(
                  children: newscontroller.EducationList5.map((element)=>Newstile(
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
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Welfare Activities",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  InkWell(
                    onTap:() {
                      Get.to(Articalpage());
                    },
                    child: Text("See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Obx(()=>newscontroller.isWelfareList.value
                  ? Column(children: [
                Newstileloading(),
                Newstileloading(),
                Newstileloading(),
              ],)
                  : Column(
                  children: newscontroller.WelfareList5.map((element)=>Newstile(
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
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Other Activities",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  InkWell(
                    onTap:() {
                      Get.to(Articalpage());
                    },
                    child: Text("See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Obx(()=>newscontroller.isOthersList.value
                  ? Column(children: [
                Newstileloading(),
                Newstileloading(),
                Newstileloading(),
              ],)
                  : Column(
                  children: newscontroller.OthersList5.map((element)=>Newstile(
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
          ),
        ),
      ),
    );
  }

}