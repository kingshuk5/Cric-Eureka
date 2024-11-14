import 'package:flutter/material.dart';

import 'LoadingContainer.dart';

class Trendingloadingcard extends StatelessWidget {
  const Trendingloadingcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(5),
      //height: 300,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(children:[
        Loadingcontainer(
            width: MediaQuery.of(context).size.width,
            height: 200
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Loadingcontainer(
                  width: MediaQuery.of(context).size.width/4,
                  height: 10
              ),

              Loadingcontainer(
                  width: MediaQuery.of(context).size.width/5,
                  height: 10
              ),
            ],),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Loadingcontainer(
                  width: MediaQuery.of(context).size.width/1.6,
                  height: 20
              ),
            ],),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Column(children: [
            // SizedBox(width: 10),
            // CircleAvatar(
            //   radius: 17,
            //   backgroundColor:
            //   Theme.of(context).colorScheme.primary,
            // ),
            SizedBox(width: 5,),
            Loadingcontainer(
                width: MediaQuery.of(context).size.width/1.6,
                height:30
            ),
          ],
          ),
        ),
        SizedBox(height: 10),
      ],),
    );
  }
}
