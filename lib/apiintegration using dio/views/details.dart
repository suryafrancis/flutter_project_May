import 'package:flutter/material.dart';
import 'package:flutter_project_may/apiintegration%20using%20dio/controller/productcontroler.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Detailsdio extends StatelessWidget {
  int index;
   Detailsdio({ super.key,required this.index});

   prodcntrolerd controller = Get.find<prodcntrolerd>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(controller.post[index].id.toString()),
            Text(controller.post[index].title),
            Text(controller.post[index].body)
          ],
        ),
      )

    );
  }
}
