import 'dart:convert';

import 'package:cric_eureka/Model/NewsModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Newscontroller extends GetxController {

  RxList<NewsModel>trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel>trendingNewsList5 = <NewsModel>[].obs;
  RxList<NewsModel>SportsList = <NewsModel>[].obs;
  RxList<NewsModel>SportsList5 = <NewsModel>[].obs;
  RxList<NewsModel>EducationList = <NewsModel>[].obs;
  RxList<NewsModel>EducationList5 = <NewsModel>[].obs;
  RxList<NewsModel>WelfareList = <NewsModel>[].obs;
  RxList<NewsModel>WelfareList5 = <NewsModel>[].obs;
  RxList<NewsModel>OthersList = <NewsModel>[].obs;
  RxList<NewsModel>OthersList5 = <NewsModel>[].obs;
  RxBool isTrendingLoading = false.obs;
  RxBool isSportsList = false.obs;
  RxBool isEducationList = false.obs;
  RxBool isWelfareList = false.obs;
  RxBool isOthersList = false.obs;


  @override
  void onInit() async {
    super.onInit();
    getTrendingNews();
    // getSportsNews();
    // getEducationNews();
    // getWelfareNews();
    // getOthersNews();
  }


  Future<void> getTrendingNews() async {
    isTrendingLoading.value = true;
    isSportsList.value = true;
    isEducationList.value = true;
    isWelfareList.value = true;
    isOthersList.value = true;
    var baseURL = "https://ngo-eureka-vc.vercel.app/api/v1/news";
    try {
      var response = await http.get(Uri.parse(baseURL));
      //print(response);
      if (response.statusCode == 200) {
        //print(response.body);
        var body = jsonDecode(response.body); //converting  the data into string
        var articles = body["data"]; //fetching the articals from data

        for (var news in articles) {
          if (news["category"].toString() == 'Activities') {
            trendingNewsList.add(NewsModel.fromJson(news));
          }
          if (news["category"].toString() == 'Sports') {
            SportsList.add(NewsModel.fromJson(news));
          }
          if (news["category"].toString() == 'Educational') {
            EducationList.add(NewsModel.fromJson(news));
          }
          if (news["category"].toString() == 'Welfare') {
            WelfareList.add(NewsModel.fromJson(news));
          }
          if (news["category"].toString() == 'Other') {
            OthersList.add(NewsModel.fromJson(news));
          }
        }
        trendingNewsList.assignAll(trendingNewsList.reversed.toList());
        trendingNewsList.length >= 5 ? trendingNewsList5 = trendingNewsList
            .sublist(0, 5)
            .obs : trendingNewsList5 = trendingNewsList;

        SportsList.assignAll(SportsList.reversed.toList());
        SportsList.length >= 5 ? SportsList5 = SportsList
            .sublist(0, 5)
            .obs : SportsList5 = SportsList;

        EducationList.assignAll(EducationList.reversed.toList());
        EducationList.length >= 5 ? EducationList5 = EducationList
            .sublist(0, 5)
            .obs : EducationList5 = EducationList;

        WelfareList.assignAll(WelfareList.reversed.toList());
        WelfareList.length >= 5 ? WelfareList5 = WelfareList
            .sublist(0, 5)
            .obs : WelfareList5 = WelfareList;

        OthersList.assignAll(OthersList.reversed.toList());
        OthersList.length >= 5 ? OthersList5 = OthersList
            .sublist(0, 5)
            .obs : OthersList5 = OthersList;
      } else {
        print("Something is Wrong");
      }
    } catch (ex) {
      print(ex);
    }
    isTrendingLoading.value = false;
    isSportsList.value = false;
    isEducationList.value = false;
    isWelfareList.value = false;
    isOthersList.value = false;
  }

}




  // Future<void>getSportsNews()async{
  //   isSportsList.value=true;
  //   var baseURL="https://ngo-eureka-my.vercel.app/api/v1/news";
  //   try{
  //     var response = await http.get(Uri.parse(baseURL));
  //     //print(response);
  //     if (response.statusCode==200){
  //       //print(response.body);
  //       var body = jsonDecode(response.body);//converting  the data into string
  //       var articles = body["data"];//fetching the articals from data
  //
  //       for(var news in articles)
  //       {
  //         if(news["category"].toString()=='Sports') {
  //           SportsList.add(NewsModel.fromJson(news));
  //         }
  //       }
  //       SportsList.assignAll(SportsList.reversed.toList());
  //       SportsList.length>=5 ? SportsList5 = SportsList.sublist(0,5).obs : SportsList5 = SportsList;
  //     }else{
  //       print("Something is Wrong");
  //     }
  //
  //   }catch(ex){
  //     print(ex);
  //   }
  //   isSportsList.value=false;
  //
  // }
  //
  //
  //
  // Future<void>getEducationNews()async{
  //   isEducationList.value=true;
  //   var baseURL="https://ngo-eureka-my.vercel.app/api/v1/news";
  //   try{
  //     var response = await http.get(Uri.parse(baseURL));
  //     //print(response);
  //     if (response.statusCode==200){
  //       //print(response.body);
  //       var body = jsonDecode(response.body);//converting  the data into string
  //       var articles = body["data"];//fetching the articals from data
  //
  //       for(var news in articles)
  //       {
  //         if(news["category"].toString()=='Educational') {
  //           EducationList.add(NewsModel.fromJson(news));
  //         }
  //       }
  //       EducationList.assignAll(EducationList.reversed.toList());
  //       EducationList.length>=5 ? EducationList5 = EducationList.sublist(0,5).obs : EducationList5 = EducationList;
  //     }else{
  //       print("Something is Wrong");
  //     }
  //
  //   }catch(ex){
  //     print(ex);
  //   }
  //   isEducationList.value=false;
  //
  // }
  //
  //
  //
  //
  // Future<void>getWelfareNews()async{
  //   isWelfareList.value=true;
  //   var baseURL="https://ngo-eureka-my.vercel.app/api/v1/news";
  //   try{
  //     var response = await http.get(Uri.parse(baseURL));
  //     //print(response);
  //     if (response.statusCode==200){
  //       //print(response.body);
  //       var body = jsonDecode(response.body);//converting  the data into string
  //       var articles = body["data"];//fetching the articals from data
  //
  //       for(var news in articles)
  //       {
  //         if(news["category"].toString()=='Welfare') {
  //           WelfareList.add(NewsModel.fromJson(news));
  //         }
  //       }
  //       WelfareList.assignAll(WelfareList.reversed.toList());
  //       WelfareList.length>=5 ? WelfareList5 = WelfareList.sublist(0,5).obs : WelfareList5 = WelfareList;
  //     }else{
  //       print("Something is Wrong");
  //     }
  //
  //   }catch(ex){
  //     print(ex);
  //   }
  //   isWelfareList.value=false;
  //
  // }
  //
  //
  //
  // Future<void>getOthersNews()async{
  //   isOthersList.value=true;
  //   var baseURL="https://ngo-eureka-my.vercel.app/api/v1/news";
  //   try{
  //     var response = await http.get(Uri.parse(baseURL));
  //     //print(response);
  //     if (response.statusCode==200){
  //       //print(response.body);
  //       var body = jsonDecode(response.body);//converting  the data into string
  //       var articles = body["data"];//fetching the articals from data
  //
  //       for(var news in articles)
  //       {
  //         if(news["category"].toString()=='Other') {
  //           OthersList.add(NewsModel.fromJson(news));
  //         }
  //       }
  //       OthersList.assignAll(OthersList.reversed.toList());
  //       OthersList.length>=5 ? OthersList5 = OthersList.sublist(0,5).obs : OthersList5 = OthersList;
  //     }else{
  //       print("Something is Wrong");
  //     }
  //
  //   }catch(ex){
  //     print(ex);
  //   }
  //   isOthersList.value=false;
  //
  // }









// RxBool isNewLoading =false.obs;
//
// @override
// void onInit(){
//   super.onInit();
// }
