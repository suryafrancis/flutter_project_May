import 'package:flutter/material.dart';
import 'package:flutter_project_may/passing%20data%20between%20screen/dummydata.dart';

class productdetails extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final id =ModalRoute.of(context)?.settings.arguments;  ///previous code collection
    final product=products.firstWhere((element) => element["id"]==id);///ethu compare cheyanulla methode anit same anekil
                                                                      ///product il verum ah id vechu vilikum bodyil
    return Scaffold(
      appBar: AppBar(title: Text(" MY SINGLE PRODUCTS"),),
      body: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(product["image"],height: 200,width: 200,),
              Text(product["name"],
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
              ),
              Text(product["description"]),
              Text("${product['price']}",style: TextStyle(fontSize: 20)),
                Text("${product['rating']}",style: TextStyle(fontSize: 20),

                ) ],

          ),
        ),
      )
    );
  }
}
