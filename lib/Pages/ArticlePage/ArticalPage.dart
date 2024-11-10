import 'package:cric_eureka/Pages/ArticlePage/Widgets/SearchWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../HomePage/Widgets/Newstile.dart';
import '../NewsDetails/NewsDetails.dart';

class Articalpage extends StatelessWidget {
  const Articalpage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Newstile(
                    ontap: (){
                      Get.to(Newsdetails());
                    },
                    imageUrl: "https://plus.unsplash.com/premium_photo-1707080369554-359143c6aa0b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG5ld3N8ZW58MHx8MHx8fDA%3D",
                    title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                    description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                    time: "Trending No 1",
                    date:"1/1/25",
                  ),
                  Newstile(
                    ontap: (){
                      Get.to(Newsdetails());
                    },
                    imageUrl: "https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg",
                    title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                    description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                    time: "Trending No 1",
                    date:"1/1/25",
                  ),
                  Newstile(
                    ontap: (){
                      Get.to(Newsdetails());
                    },
                    imageUrl: "https://www.shutterstock.com/shutterstock/photos/2453491007/display_1500/stock-vector-latest-news-poster-banner-graphic-design-icon-logo-sign-symbol-social-media-website-coupon-2453491007.jpg",
                    title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                    description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                    time: "Trending No 1",
                    date:"1/1/25",
                  ),
                  Newstile(
                    ontap: (){
                      Get.to(Newsdetails());
                    },
                    imageUrl: "https://plus.unsplash.com/premium_photo-1707080369554-359143c6aa0b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG5ld3N8ZW58MHx8MHx8fDA%3D",
                    title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                    description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                    time: "Trending No 1",
                    date:"1/1/25",
                  ),
                  Newstile(
                    ontap: (){
                      Get.to(Newsdetails());
                    },
                    imageUrl: "https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg",
                    title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                    description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                    time: "Trending No 1",
                    date:"1/1/25",
                  ),
                  Newstile(
                    ontap: (){
                      Get.to(Newsdetails());
                    },
                    imageUrl: "https://www.shutterstock.com/shutterstock/photos/2453491007/display_1500/stock-vector-latest-news-poster-banner-graphic-design-icon-logo-sign-symbol-social-media-website-coupon-2453491007.jpg",
                    title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                    description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya",
                    time: "Trending No 1",
                    date:"1/1/25",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
