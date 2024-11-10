import 'package:cric_eureka/Components/NavigationBar.dart';
import 'package:cric_eureka/Pages/HomePage/Widgets/trendingCard.dart';
import 'package:cric_eureka/Pages/NewsDetails/NewsDetails.dart';
import 'package:flutter/material.dart';
import 'package:cric_eureka/Pages/HomePage/Widgets/Newstile.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget{
  const  HomePage({super.key});

  @override
  Widget build(BuildContext context){
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
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100)
                  ),
                  child: Icon(Icons.person,
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ],),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Our Activities",
                  style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  Text("See All",
                  style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Trendingcard(
                        ontap: (){
                          Get.to(Newsdetails());
                        },
                        imageUrl: "https://plus.unsplash.com/premium_photo-1707080369554-359143c6aa0b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG5ld3N8ZW58MHx8MHx8fDA%3D",
                        title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                        description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya succeed during an October 7 State House meeting with a large delegation of African and U.S. credit union leaders that included World Council of Credit Unions’ (WOCCU) President and CEO Elissa McCarter LaBorde and Worldwide Foundation for Credit Unions’ (WFCU) Board Chair Bill Cheney.",
                        date: "7/11/24",
                        place: "Bhatar",
                    ),
                    Trendingcard(
                      ontap: (){
                        Get.to(Newsdetails());
                      },
                      imageUrl: "https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg",
                      title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                      description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya succeed during an October 7 State House meeting with a large delegation of African and U.S. credit union leaders that included World Council of Credit Unions’ (WOCCU) President and CEO Elissa McCarter LaBorde and Worldwide Foundation for Credit Unions’ (WFCU) Board Chair Bill Cheney.",
                      date: "7/11/24",
                      place: "Haldia",
                    ),
                    Trendingcard(
                      ontap: (){
                        Get.to(Newsdetails());
                      },
                      imageUrl: "https://www.shutterstock.com/shutterstock/photos/2453491007/display_1500/stock-vector-latest-news-poster-banner-graphic-design-icon-logo-sign-symbol-social-media-website-coupon-2453491007.jpg",
                      title: "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                      description: "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya succeed during an October 7 State House meeting with a large delegation of African and U.S. credit union leaders that included World Council of Credit Unions’ (WOCCU) President and CEO Elissa McCarter LaBorde and Worldwide Foundation for Credit Unions’ (WFCU) Board Chair Bill Cheney.",
                      date: "7/11/24",
                      place: "Himachal",
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sports Activities",
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

              ],),
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

              ],)

            ],
          ),
        ),
      ),
    );
  }

}