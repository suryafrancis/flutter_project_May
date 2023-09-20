
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: samplehome(),
  ));
}
class samplehome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future<bool> Showalert()async { /// future function ayathu konde async and await kodukanam
      return await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Confirm Exit??????"),
        content: Text("Do you want to exit!!!!!"),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop(true);
          }, child: Text("YES")),
          TextButton(onPressed: (){
            Navigator.of(context).pop(false);
          }, child: Text("NO")),
          TextButton(onPressed: (){
            Navigator.of(context).pop(false);

          }, child: Text("CANCEL")),

        ],

      );
      });
    }
    return WillPopScope(
      child: Scaffold(body: Center(child:Text("BackButton to exit"),),
    ), onWillPop: Showalert);
      /// showalert nammal create cheytha function ane
      /// right click cheythu create a methode kodukanam
  }
}
