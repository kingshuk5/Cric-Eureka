import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CricketScoreCard extends StatelessWidget {

  final String teamA;
  final String teamB;
  final String teamAScore;
  final String teamBScore;
  final String overs;
  final String date;
  final String time;
  final String teamALogo;
  final String teamBLogo;
  final bool isLive;
  final bool isBreak;
  final String status;
  final bool isBowling;
  final String Link;
const CricketScoreCard ({super.key, required this.isBowling,required this.teamA, required this.teamB, required this.teamAScore,required this.teamBScore,required this.overs,required this.isBreak,required this.isLive,required this.date, required this.time, required this.teamALogo, required this.teamBLogo, required this.status, required this.Link});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                (isLive==true)? Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color:Colors.red,
                    borderRadius:BorderRadius.circular(100),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'LIVE SCORE',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ):Text(
                    "Match Results",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        // Team A Logo (Optional)
                        Image.network(
                          teamALogo,
                          height: 50,
                        ),
                        SizedBox(height: 8),
                        Text(
                          teamA,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Text(
                          teamAScore, // Runs/Wickets
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        isLive?Column(
                          children: [
                            isBowling?Row(
                              children: [
                                Icon(Icons.sports_handball_rounded,
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                                Text(
                                  "Bowling", // Runs/Wickets
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ):Row(
                              children: [
                                Icon(Icons.sports_cricket_rounded,
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                                Text(
                                  "Batting", // Runs/Wickets
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ):Text(
                          "", // Runs/Wickets
                          style: TextStyle(
                            fontSize: 0,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Overs : ', // Overs
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                  fontSize: 20),
                            ),
                            Text(
                              overs, // Overs
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        isBreak?Text(
                          'Innings Break',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ):Text(
                          '',
                          style: TextStyle(
                            fontSize: 0,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          time,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 20),
                        ),
                        Text(
                          date,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 20),
                        ),
                        InkWell(
                          onTap: (){
                            var link=Link;
                            launchUrl(
                              Uri.parse(link),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                  "Watch on YT",
                                style: TextStyle(
                                    color: Theme.of(context).colorScheme.onSecondary,
                                    fontSize: 14),
                              ),
                              SizedBox(width: 5,),
                              Icon(Icons.ondemand_video_rounded,
                                color:Theme.of(context).colorScheme.secondary,),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        // Team B Logo (Optional)
                        Image.network(
                          teamBLogo,
                          height: 50,
                        ),
                        SizedBox(height: 8),
                        Text(
                          teamB,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Text(
                          teamBScore, // Runs/Wickets
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        isLive?Column(
                          children: [
                            (isBowling==false)?Row(
                              children: [
                                Icon(Icons.sports_handball_rounded,
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                                Text(
                                  "Bowling", // Runs/Wickets
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ):Row(
                              children: [
                                Icon(Icons.sports_cricket_rounded,
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                                Text(
                                  "Batting", // Runs/Wickets
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ):Text(
                          "", // Runs/Wickets
                          style: TextStyle(
                            fontSize: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    status,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
