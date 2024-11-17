import 'dart:async';
import 'dart:convert';
import 'package:cric_eureka/Model/LiveMatchModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Cricketcontroller extends GetxController {

  RxList<LiveMatchModel>LiveScoreList = <LiveMatchModel>[].obs;
  RxList<LiveMatchModel>PastMatchesList = <LiveMatchModel>[].obs;
  Timer? _timer;


  // RxBool isLiveLoading =false.obs;
  // RxBool isPastLoading =false.obs;



  void onInit() async{
    super.onInit();
    //getLiveScore();
    getPastMatches();
    startLiveScoreUpdates(); // Start periodic updates

  }
  @override
  void onClose() {
    _timer?.cancel(); // Cancel the timer when the controller is disposed
    super.onClose();
  }

  void startLiveScoreUpdates() {
    // Call the API immediately and then every second
    getLiveScore();
    _timer = Timer.periodic(Duration(seconds: 10), (timer) {
      getLiveScore();
    });
  }


  Future<void>getLiveScore()async{
    //isLiveLoading.value=true;
    var baseURL="https://ngo-eureka-my.vercel.app/api/v1/live";
    try{
      var response = await http.get(Uri.parse(baseURL));
      //print(response);
      if (response.statusCode==200){
        //print(response.body);
        var body = jsonDecode(response.body);//converting  the data into string
        var Scores = body["data"];//fetching the articals from data

        LiveScoreList.clear();// Clear and update the list

          if(Scores[0]["isLive"]==true) {
          for (var ScoreData in Scores) {
              LiveScoreList.add(LiveMatchModel.fromJson(ScoreData));
           }
          }
      }else{
        print("Something is Wrong");
      }

    }catch(ex){
      print(ex);
    }
    //isLiveLoading.value=false;
  }
  Future<void>getPastMatches()async{
    //isLiveLoading.value=true;
    var baseURL="https://ngo-eureka-my.vercel.app/api/v1/matches";
    try{
      var response = await http.get(Uri.parse(baseURL));
      //print(response);
      if (response.statusCode==200){
        //print(response.body);
        var body = jsonDecode(response.body);//converting  the data into string
        var Scores = body["data"];//fetching the articals from data

        for(var ScoreData in Scores)
        {
          PastMatchesList.add(LiveMatchModel.fromJson(ScoreData));
        }
        PastMatchesList.assignAll(PastMatchesList.reversed.toList());
      }else{
        print("Something is Wrong");
      }

    }catch(ex){
      print(ex);
    }
    //isLiveLoading.value=false;
  }

}







// RxBool isNewLoading =false.obs;
//
// @override
// void onInit(){
//   super.onInit();
// }
