import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bottomsheetq(),
  ));
}
class bottomsheetq extends StatelessWidget {
  const bottomsheetq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onLongPress: (){
            showSheet(context);
          },
          child: Image.asset("assets/image/img_2.png"),),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
             // leading: Icon(Icons.share),
              leading:FaIcon(FontAwesomeIcons.facebook,color:Colors.blue),
              title: Text("facebook"),
            ),
            ListTile(
              leading:FaIcon(FontAwesomeIcons.whatsapp,color:Colors.green),
              title: Text("copy"),
            ),
            ListTile(
              leading:FaIcon(FontAwesomeIcons.searchengin,color:Colors.black),
              title: Text("search"),
            )
          ],
        ),
      );
    });
  }
}
