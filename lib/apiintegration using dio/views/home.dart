import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_project_may/api_integration/api_integration_using%20httpandgetx/controller/productcontrooller.dart';
import 'package:flutter_project_may/apiintegration%20using%20dio/controller/productcontroler.dart';
import 'package:flutter_project_may/apiintegration%20using%20dio/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'details.dart';
 void main(){
   runApp(GetMaterialApp(home: HomeDio(),));
 }
class HomeDio extends StatelessWidget {
  prodcntrolerd controller = Get.put(prodcntrolerd());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycollors.bgcolor,
      floatingActionButton: Obx(
              () =>
          controller.isInternetConnected.value
              ? buildFAB()
              : Container()),
      body: Obx(() =>
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: controller.isInternetConnected.value
                ?
            (controller.isLoading.value ? loadanimation() : getData())
                : noInternet(context),
          )),
    );
  }

  FloatingActionButton buildFAB() {
    return FloatingActionButton(onPressed: () {
      controller.isListScrollDown.value ? controller.Scroolup() : controller
          .Scrolltodown();
    },
      backgroundColor: Mycollors.prcolor,
      child: FaIcon(controller.isListScrollDown.value ?
      FontAwesomeIcons.arrowUp
          : FontAwesomeIcons.arrowDown,
      ),
    );
  }

  Center loadanimation() {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.network(
            "https://lottie.host/e3275940-0d53-45b5-941b-94e1ccd48413/CygR5KJ2eE.json"),
      ),
    );
  }

  RefreshIndicator getData() {
    return RefreshIndicator(
      onRefresh: () {
        return controller.getposts();
      },
      child: ScrollablePositionedList.builder(
          itemScrollController: controller.itemController,
          physics: BouncingScrollPhysics(),

          itemCount: controller.post.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Get.to(Detailsdio(index: index)),
              child: Card(
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                          controller.post[index].id.toString()
                      ),),
                  ),
                  title: Text(controller.post[index].title),
                  subtitle: Text(controller.post[index].body),
                ),),
            );
          }),
    );
  }

 Center noInternet(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Lottie.network("https://lottie.host/7cda80be-504d-4b44-bcbe-b3f0bb168ebd/Cy8hOyhq8t.json"),
        ),
        MaterialButton(onPressed:()=> ontapMaterialButton(context),
        child: Text("Try Again"),
        )
      ],
    ),
  );
  }

 void ontapMaterialButton(BuildContext context)async {
   if (await InternetConnectionChecker().hasConnection == true){
     controller.getposts();
   }else{
showTopSnackBar(Overlay.of(context), CustomSnackBar.error(message: "No Internet Connection!!!",));
   }
  }
}
