import 'package:flutter/material.dart';
import 'package:flutter_project_may/api_integration/api_integration_using%20httpandgetx/Screens/home/widgetsspro/producttile.dart';
import 'package:flutter_project_may/api_integration/api_integration_using%20httpandgetx/controller/productcontrooller.dart';
import 'package:get/get.dart';

void main(){
  runApp(GetMaterialApp(home: Apihompage(),));

}
class Apihompage extends StatelessWidget {

final Prodtcontroller=Get.put(productcontroller());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Products From API"),
      ),
      body: SizedBox(
        child:Obx(() {
         if(Prodtcontroller.isLoading.value){
           return  Center(
           child: CircularProgressIndicator(),
        );
         }else{
           return GridView.builder(
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                 (
                 crossAxisCount: 2),
                itemBuilder: (context,index){
                 return producttile(Prodtcontroller.productlist[index]);
          },
          itemCount: Prodtcontroller.productlist.length,
           );
         }
        }),
      ),
    );
  }
}
