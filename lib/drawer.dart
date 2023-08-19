import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: drawerex(),
  ));
}
class drawerex extends StatelessWidget {
  const drawerex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MY DRAWER"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.greenAccent),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                 // color: Colors.yellow
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/img_16.png")
                  )
                ),
                accountName: Text("Surya Francis",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold),
              ),
                  accountEmail: Text("suryafrancis91@gmail.com"),
              currentAccountPicture: Image.asset("assets/image/img_9.png"),
                otherAccountsPictures: [Image.asset("assets/image/img_8.png"),Image.asset("assets/image/img_15.png")],

              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home")
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              ListTile(
                leading: Icon(Icons.search_rounded),
                title: Text("Search"),
              ),ListTile(
                leading: Icon(Icons.menu),
                title: Text("Menu"),
              )
            ],
          ),
        ),
      )
    );
  }
}
