import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listview3(),
  ));
}
class listview3 extends StatelessWidget {
  var names =["anu","anju","hazel","sebin","shoni"];
  var images=["assets/image/img_7.png","assets/image/img_8.png","assets/image/img_9.png",
    "assets/image/img_10.png","assets/image/img_11.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Builder"),),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
        return Card(
          child: ListTile(
        leading:CircleAvatar(backgroundImage: AssetImage(images[index])) ,
        title: Text(names[index]),
        subtitle: Text("how r u?"),
        trailing: Text("11.30"),
          ));

      }),
    );
  }
}
