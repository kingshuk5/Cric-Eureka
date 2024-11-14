import 'package:cric_eureka/Components/NavigationBar.dart';
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
                    children: newscontroller.trendingNewsList.map((element)=> Trendingcard(
                    ontap: (){
                      Get.to(Newsdetails(
                        news: element,
                      ));
                    },
                    imageUrl: element.urlToImage??"https://www.gasso.com/wp-content/uploads/2017/04/noimage.jpg",
                    title: element.title! ,
                    description: element.description!,
                    date: element.publishedAt!,
                    place: element.author!,
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
              Obx(()=>newscontroller.isNewsList.value
                  ? Column(children: [
                    Newstileloading(),
                    Newstileloading(),
                    Newstileloading(),
              ],)
                  : Column(
                  children: newscontroller.NewsList5.map((element)=>Newstile(
                    ontap: (){
                      Get.to(Newsdetails(
                        news: element,
                      ));
                    },
                    imageUrl: element.urlToImage ?? "https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=",
                    title: element.title!,
                    description: element.description ??"",
                    time:element.publishedAt??"",
                    date:element.publishedAt!,
                  ),).toList()
              ), ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Education Activities",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  Text("See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Column(children: [
                Newstile(
                  ontap: (){
                    //Get.to(Newsdetails());
                  },
                  imageUrl: "https://plus.unsplash.com/premium_photo-1707080369554-359143c6aa0b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG5ld3N8ZW58MHx8MHx8fDA%3D",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                  time: "Trending No 1",
                  date:"1/1/25",
                ),
                Newstile(
                  ontap: (){
                    //Get.to(Newsdetails());
                  },
                  imageUrl: "https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                  time: "Trending No 1",
                  date:"1/1/25",
                ),
                Newstile(
                  ontap: (){
                    //Get.to(Newsdetails());
                  },
                  imageUrl: "https://www.shutterstock.com/shutterstock/photos/2453491007/display_1500/stock-vector-latest-news-poster-banner-graphic-design-icon-logo-sign-symbol-social-media-website-coupon-2453491007.jpg",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                  time: "Trending No 1",
                  date:"1/1/25",
                ),

              ],),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Welfare Activities",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  Text("See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                Newstile(
                  ontap: (){
                   // Get.to(Newsdetails());
                  },
                  imageUrl: "https://plus.unsplash.com/premium_photo-1707080369554-359143c6aa0b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG5ld3N8ZW58MHx8MHx8fDA%3D",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                  time: "Trending No 1",
                  date:"1/1/25",
                ),
                Newstile(
                  ontap: (){
                   // Get.to(Newsdetails());
                  },
                  imageUrl: "https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                  time: "Trending No 1",
                  date:"1/1/25",
                ),
                Newstile(
                  ontap: (){
                   // Get.to(Newsdetails());
                  },
                  imageUrl: "https://www.shutterstock.com/shutterstock/photos/2453491007/display_1500/stock-vector-latest-news-poster-banner-graphic-design-icon-logo-sign-symbol-social-media-website-coupon-2453491007.jpg",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                  time: "Trending No 1",
                  date:"1/1/25",
                ),

              ],),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Other Activities",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  Text("See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Column(children: [
                Newstile(
                  ontap: (){
                    //Get.to(Newsdetails());
                  },
                  imageUrl: "https://plus.unsplash.com/premium_photo-1707080369554-359143c6aa0b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG5ld3N8ZW58MHx8MHx8fDA%3D",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                  time: "Trending No 1",
                  date:"1/1/25",
                ),
                Newstile(
                  ontap: (){
                    //Get.to(Newsdetails());
                  },
                  imageUrl: "https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                  time: "Trending No 1",
                  date:"1/1/25",
                ),
                Newstile(
                  ontap: (){
                    //Get.to(Newsdetails());
                  },
                  imageUrl: "https://www.shutterstock.com/shutterstock/photos/2453491007/display_1500/stock-vector-latest-news-poster-banner-graphic-design-icon-logo-sign-symbol-social-media-website-coupon-2453491007.jpg",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                  time: "Trending No 1",
                  date:"1/1/25",
                ),

              ],)

            ],
          ),
        ),
      ),
    );
  }

}