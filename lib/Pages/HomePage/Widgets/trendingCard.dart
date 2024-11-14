import 'package:flutter/material.dart';


class Trendingcard extends StatelessWidget {
  final String imageUrl;
  final String date;
  final String description;
  final String title;
  final String place;
  final VoidCallback ontap;
  const Trendingcard({
    super.key,
    required this.imageUrl,
    required this.date,
    required this.description,
    required this.title,
    required this.place,
    required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(5),
        //height: 300,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(children:[
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(imageUrl,
                fit: BoxFit.cover,)
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("$place",
                    //style:Theme.of(context).textTheme.labelSmall,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("$date",
                    //style: Theme.of(context).textTheme.labelSmall,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(title,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],),
          ),
          SizedBox(height: 5),
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
              Text(
                "$description",
                maxLines: 2,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              )
            ],
            ),
          ),
          SizedBox(height: 10),
        ],),
      ),
    );
  }
}
