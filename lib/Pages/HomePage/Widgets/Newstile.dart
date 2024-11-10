import 'package:flutter/material.dart';

class Newstile extends StatelessWidget {
  final String imageUrl;
  final String time;
  final String title;
  final String description;
  final String date;
  final VoidCallback ontap;
  const Newstile({super.key,
    required this.imageUrl,
    required this.time,
    required this.title,
    required this.description,
    required this.ontap, required this.date});

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
                    Text(" $title",
                      maxLines: 2,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 16,
                      ),
                    ),
                  SizedBox(height: 10,),
                  Text("$description",
                    maxLines: 2,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 14),
                    ),
                  SizedBox(height: 10,),
                  Text("$time",
                      //style:Theme.of(context).textTheme.labelSmall),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 12),
                  ),
                ],),
            )
          ],
        ),
      ),
    );
  }
}
