import 'package:cric_eureka/Components/NavigationBar.dart';
import 'package:cric_eureka/Pages/HomePage/Widgets/trendingCard.dart';
import 'package:flutter/material.dart';
import 'package:cric_eureka/Pages/HomePage/Widgets/Newstile.dart';

class HomePage extends StatelessWidget{
  const  HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Theme.of(context).colorScheme.primary,

        title:
        Text("Cric Eureka",
              style: Theme.of(context).textTheme.headlineLarge,
        ),


      ),

      floatingActionButton:MyBottomNav(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Eureka News",
                  style: Theme.of(context).textTheme.bodyLarge,
                  ),
          
                  Text("See All",
                  style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Trendingcard(
                        imageUrl: "https://plus.unsplash.com/premium_photo-1707080369554-359143c6aa0b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG5ld3N8ZW58MHx8MHx8fDA%3D",
                        title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                        author: "Kingshuk hazra",
                        tag: "Trending No 1",
                        place: "Bhatar",
                    ),
                    Trendingcard(
                      imageUrl: "https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg",
                      title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                      author: "Arko Hazra",
                      tag: "Trending No 2",
                      place: "Haldia",
                    ),
                    Trendingcard(
                      imageUrl: "https://www.shutterstock.com/shutterstock/photos/2453491007/display_1500/stock-vector-latest-news-poster-banner-graphic-design-icon-logo-sign-symbol-social-media-website-coupon-2453491007.jpg",
                      title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                      author: "Srijita Hazra",
                      tag: "Trending No 3",
                      place: "Himachal",
                    ),
          
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Cricket News",
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
                  imageUrl: "https://plus.unsplash.com/premium_photo-1707080369554-359143c6aa0b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG5ld3N8ZW58MHx8MHx8fDA%3D",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  author: "Kingshuk hazra",
                  time: "Trending No 1",
                ),
                Newstile(
                  imageUrl: "https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  author: "Kingshuk hazra",
                  time: "Trending No 1",
                ),
                Newstile(
                  imageUrl: "https://www.shutterstock.com/shutterstock/photos/2453491007/display_1500/stock-vector-latest-news-poster-banner-graphic-design-icon-logo-sign-symbol-social-media-website-coupon-2453491007.jpg",
                  title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  author: "Kingshuk hazra",
                  time: "Trending No 1",
                ),
          
              ],)
              
            ],
          ),
        ),
      ),
    );
  }

}