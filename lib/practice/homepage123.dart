import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listvw3(),
  ));
}
class listvw3 extends StatelessWidget {
  var names =["Ring","Bangles","Neck Chain","Earring","Bangles"];
  var images=["assets/image/img_18.png","assets/image/img_19.png","assets/image/img_21.png",
    "assets/image/img_22.png","assets/image/img_20.png"];
  var price=["\$250","\$1000","\$500","\$750","\$200"];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
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


      },
      child: Scaffold(
        appBar: AppBar(title: Text("ROWANS COLLECTION'S"),),
        body: Container(
          decoration:  const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,

                image: AssetImage("assets/image/img_15.png")),

          ),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context,index){
                return Card(
                    child: ListTile(
                      leading:CircleAvatar(backgroundImage: AssetImage(images[index])) ,
                      title: Text(names[index]),
                      subtitle: Text(price[index]),
                      trailing: Icon(Icons.shopping_cart),
                    ));

              }),
        ),

      ),
    );
  }
}
