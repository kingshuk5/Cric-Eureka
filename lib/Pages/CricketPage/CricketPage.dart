import 'package:cric_eureka/Controller/CricketController.dart';
import 'package:cric_eureka/Pages/CricketPage/Widgets/CricketScorecard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Cricketpage extends StatelessWidget {
  const Cricketpage ({super.key});

  @override
  Widget build(BuildContext context){
  Cricketcontroller cricketcontroller= Get.put(Cricketcontroller());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 150,
                        child: Image.asset(
                          'assets/CCL_copy-removebg-preview.png',
                        ),
                      ),
                      Text(
                        "CORPORATE CRICKET LEAGUE",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          letterSpacing:1.5,
                        ),),
                    ],
                  ),
                ],),
              Column(
                  children: [
                    SizedBox(height:10),
                    Obx((){
                      return
                        Column(
                            children: cricketcontroller.LiveScoreList.map((element)=>CricketScoreCard(
                                teamA: element.teamA??"Team A",
                                teamB: element.teamB??"Team B",
                                teamAScore: element.teamAScore??"0/0",
                                teamBScore: element.teamBScore??"0/0",
                                overs: element.overs??"0.0",
                                status: element.status??"",
                                isBreak: element.isBreak??false,
                                isBowling:element.isABowling??false,
                                isLive: element.isLive??true,
                                date: element.date??"",
                                time: element.time??"",
                                teamALogo:element.teamALogo?? "",
                                teamBLogo: element.teamBLogo??"",
                                Link: element.ytLink??"",
                            )
                            ).toList()
                        );
                      },
                    ),
                  ],
              ),
                    SizedBox(height: 20,),
                    Text(
                      "Matches",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        letterSpacing:1.5,
                      ),),
                    SizedBox(height: 20,),
              Column(
                children: [
                  SizedBox(height:10),
                  Obx((){
                    return
                      Column(
                          children: cricketcontroller.PastMatchesList.map((element)=>CricketScoreCard(
                            teamA: element.teamA??"Team A",
                            teamB: element.teamB??"Team B",
                            teamAScore: element.teamAScore??"0/0",
                            teamBScore: element.teamBScore??"0/0",
                            overs: element.overs??"0.0",
                            status: element.status??"",
                            isBreak: element.isBreak??false,
                            isBowling:element.isABowling??false,
                            isLive: false,
                            date: element.date??"",
                            time: element.time??"",
                            teamALogo:element.teamALogo?? "",
                            teamBLogo: element.teamBLogo??"",
                            Link: element.ytLink??"https://www.youtube.com/@ngoeureka",
                          ),
                          ).toList()
                      );
                  },
                  ),
                  SizedBox(height:10),
                ],
              ),



            ]
          ),
          ),
      ),
    );
  }
}