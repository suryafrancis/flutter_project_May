import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listview2(),
  ));
}
class listview2 extends StatelessWidget {
  var names =["anu","anju","hazel","sebin","shoni"];
  var images=["assets/image/img_7.png","assets/image/img_8.png","assets/image/img_9.png",
    "assets/image/img_10.png","assets/image/img_11.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView2"),
      ),
      body: ListView(
        children: List.generate(5, (index) => Card(
          child: ListTile(
            leading:CircleAvatar(backgroundImage: AssetImage(images[index])) ,
          title: Text(names[index]),
          subtitle: Text("how r u?"),
          trailing: Text("11.30"),
          ),
        ))
      ),
    );
  }
}
