import 'package:flutter/material.dart';

class Newstile extends StatelessWidget {
  final String imageUrl;
  final String time;
  final String title;
  final String author;
  final VoidCallback ontap;
  const Newstile({super.key,
    required this.imageUrl,
    required this.time,
    required this.title,
    required this.author,
    required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin:EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.all(10),
        //height: 150,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius:BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius:BorderRadius.circular(20)
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(imageUrl,
                    fit: BoxFit.cover,)
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    //SizedBox(width: 10),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor:
                      Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(width: 10),
                    Text("$author")
                  ],
                  ),
                  SizedBox(height: 15,),
                  Text(" $title",
                    maxLines: 2,
                  ),
                  SizedBox(height: 15,),
                  Text("$time",
                      style:Theme.of(context).textTheme.labelSmall),
                ],),
            )
          ],
        ),
      ),
    );
  }
}
