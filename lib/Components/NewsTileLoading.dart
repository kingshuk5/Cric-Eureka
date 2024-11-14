import 'package:flutter/material.dart';

import 'LoadingContainer.dart';

class Newstileloading extends StatelessWidget {
  const Newstileloading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      //height: 150,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius:BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Loadingcontainer(
            width: 120,
            height: 120,
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Loadingcontainer(
                    width: MediaQuery.of(context).size.width/1.6,
                    height: 20
                ),
                SizedBox(height: 10,),
                Loadingcontainer(
                    width: MediaQuery.of(context).size.width/1.6,
                    height:15
                ),
                SizedBox(height: 10,),
                Loadingcontainer(
                    width: MediaQuery.of(context).size.width/3,
                    height:15
                ),
                SizedBox(height: 10,),
                Loadingcontainer(
                    width: MediaQuery.of(context).size.width/2,
                    height: 12
                ),

              ],),
          )
        ],
      ),
    );
  }
}
