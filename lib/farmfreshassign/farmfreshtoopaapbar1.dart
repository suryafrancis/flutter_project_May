
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: farmtopappbar(),
  ));
}
class farmtopappbar extends StatelessWidget {
  const farmtopappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Color(0xff01b746),
            title: Text("FARMERS FRESH ZONE..."),
            titleTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
            actions: [
              Row(
                children: [
                  Icon(Icons.location_pin),
                  Text("Kochi"),
                  Icon(Icons.arrow_drop_down)
                ],

          )

        ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 30,
                color: Colors.white,
              child: TextField(decoration: InputDecoration(
                hintText: "Search For Vegetables,Fruits...",
                isDense: true,
                border: InputBorder.none,
                focusColor: Color(0xff01b748),
                filled: true,
                prefixIcon: Icon(Icons.search),
              ),),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 0,
                      (context, index) => Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    height: 80,
                    child: Text( style: TextStyle(fontSize: 30)," $index"),
                  )))
      ],
    ));


  }
}
