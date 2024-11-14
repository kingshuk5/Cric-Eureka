import 'package:cric_eureka/Pages/CricketPage/Widgets/CricketScorecard.dart';
import 'package:flutter/material.dart';

class Cricketpage extends StatelessWidget {
  const Cricketpage ({super.key});

  @override
  Widget build(BuildContext context) {
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
                    CricketScoreCard(
                          teamA: 'India',
                          teamB: 'Pakistan',
                          teamAScore: '220/3',
                          teamBScore: '110/5',
                          overs: '11.4',
                          status: "Match Started, India Won the Toss",
                          isBreak: true,
                          isBowling:false,
                          isLive: true,
                          date: 'Fri, Feb 24',
                          time: '5:10 Pm',
                          teamALogo: "https://upload.wikimedia.org/wikipedia/mai/1/11/India_national_cricket_team.png",
                          teamBLogo: "https://upload.wikimedia.org/wikipedia/commons/a/ad/Pakistan_cricket_team_logo.png",)
                      ],
                    ),
            ],
          ),
              ),
        ),
    );
  }
}