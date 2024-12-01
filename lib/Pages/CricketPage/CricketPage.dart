import 'package:cric_eureka/Controller/CricketController.dart';
import 'package:cric_eureka/Pages/CricketPage/Widgets/CricketScorecard.dart';
import 'package:cric_eureka/Pages/CricketPage/Widgets/PastTimeLine.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../CricketDetails/CricDetails.dart';
class Cricketpage extends StatelessWidget {
  const Cricketpage ({super.key});
  String trimStatus( statusString) {
    if (statusString == null || statusString.isEmpty) {
      return "Match Ended";
    }
    // Split the status string by '|' and take the last element
    List<String> parts = statusString.split('|');
    return parts.last.trim();
  }


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
                      return Column(
                               children: cricketcontroller.LiveScoreList.map((element)=>CricketScoreCard(
                                  ontap: (){
                                    Get.to(()=>Cricdetails());
                                  },
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
                  Obx(()=>cricketcontroller.isPastLoading.value
                      ?CircularProgressIndicator()
                      :Column(
                          children: cricketcontroller.PastMatchesList.map((element)=>CricketScoreCard(
                            ontap: () {
                              Get.to(Pasttimeline(
                                PastTimeLinestatus: element.status,
                              ));
                            },
                            teamA: element.teamA??"Team A",
                            teamB: element.teamB??"Team B",
                            teamAScore: element.teamAScore??"0/0",
                            teamBScore: element.teamBScore??"0/0",
                            overs: element.overs??"0.0",
                            status: "At End Over "+trimStatus(element.status),
                              //status: element.status?.substring(0,element.status?.indexOf("|")??0)??"",
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
                      ),
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