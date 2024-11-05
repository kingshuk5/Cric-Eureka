import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Newsdetails extends StatelessWidget {
  const Newsdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new,
                              color:Theme.of(context).colorScheme.onPrimaryContainer,),
                            Text("Back"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: 330 ,
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(children: [
                    Expanded(child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp",
                        fit:BoxFit.cover,
                      ),
                    ),
                    )
                  ],),
                ),
                SizedBox(height: 20),
                Text(
                  "Tittle Tittle Tittle Tittle Tittle Tittle Tittle",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(children: [
                  Text(
                    "2 Day Ago",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],),
                SizedBox(height: 10),
                Row(children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Kingshuk Hazra",
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ],),
                SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "MADISON, Wis.—President William Ruto of Kenya confirmed cooperatives are central to his government’s priorities and that he wants to see the savings and credit cooperative (SACCO) movement in Kenya succeed during an October 7 State House meeting with a large delegation of African and U.S. credit union leaders that included World Council of Credit Unions’ (WOCCU) President and CEO Elissa McCarter LaBorde and Worldwide Foundation for Credit Unions’ (WFCU) Board Chair Bill Cheney.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ],
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
