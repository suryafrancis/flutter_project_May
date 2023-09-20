import 'package:flutter/animation.dart';
import 'package:flutter_project_may/api_integration/api_integration_using%20httpandgetx/model/productmodells.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../model/postmodel.dart';
import '../service/dioservi.dart';

class prodcntrolerd extends GetxController{
  RxList post = RxList(); // the list rx is observable data and empty(initially)
RxBool isLoading = true.obs;
RxBool isListScrollDown = false.obs;
RxBool isInternetConnected =true.obs;

var url ="https://jsonplaceholder.typicode.com/posts";
var itemController =ItemScrollController();//scroll action animation

/// for checking internet connection

checkisInetrnetconnected() async{
  isInternetConnected.value= await InternetConnectionChecker().hasConnection;

}

/// calling api and get response
getposts()async{
  checkisInetrnetconnected();
  isLoading.value=true;
  var response = await Dioservice().getMethod(url);
  if(response.statusCode == 200){
    response.data.forEach((element){
      post.add(Productmodeldio.fromJson(element));
    });
    isLoading.value = false;
  }
}

/// scrol listview in down
Scrolltodown(){
  itemController.scrollTo(index: post.length, duration: Duration(
    seconds: 3,),
  curve:Curves.linearToEaseOut);
  isListScrollDown.value=true;
}
Scroolup() {
  itemController.scrollTo(index: 0, duration: Duration(
    seconds: 3,),
      curve: Curves.bounceIn);
  isListScrollDown.value = false;
}
@override
  void onInit() {
    getposts();
    isInternetConnected();
    super.onInit();
  }
}

