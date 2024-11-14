import 'dart:convert';

import 'package:cric_eureka/Model/NewsModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Newscontroller extends GetxController {

  RxList<NewsModel>trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel>NewsList = <NewsModel>[].obs;
  RxList<NewsModel>NewsList5 = <NewsModel>[].obs;
  RxBool isTrendingLoading =false.obs;
  RxBool isNewsList =false.obs;


  void onInit() async{
    super.onInit();
    getTrendingNews();
    getNews();
  }


  Future<void>getTrendingNews()async{
    isTrendingLoading.value=true;
    var baseURL="https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=a885b175578c4d5386452982023dafd3";
    try{
      var response = await http.get(Uri.parse(baseURL));
      //print(response);
      if (response.statusCode==200){
        //print(response.body);
        var body = jsonDecode(response.body);//converting  the data into string
        var articles = body["articles"];//fetching the articals from data
        for(var news in articles)
        {
          trendingNewsList.add(NewsModel.fromJson(news));
        }
      }else{
        print("Something is Wrong");
      }

    }catch(ex){
      print(ex);
    }
    isTrendingLoading.value=false;

  }
  Future<void>getNews()async{
    isNewsList.value=true;
    var baseURL="https://newsapi.org/v2/everything?q=apple&from=2024-11-09&to=2024-11-09&sortBy=popularity&apiKey=a885b175578c4d5386452982023dafd3";
    try{
      var response = await http.get(Uri.parse(baseURL));
      //print(response);
      if (response.statusCode==200){
        //print(response.body);
        var body = jsonDecode(response.body);//converting  the data into string
        var articles = body["articles"];//fetching the articals from data
        for(var news in articles)
        {
          NewsList.add(NewsModel.fromJson(news));
        }
        NewsList5 = NewsList.sublist(0,5).obs;
      }else{
        print("Something is Wrong");
      }

    }catch(ex){
      print(ex);
    }
    isNewsList.value=false;

  }

}


// RxBool isNewLoading =false.obs;
//
// @override
// void onInit(){
//   super.onInit();
// }
