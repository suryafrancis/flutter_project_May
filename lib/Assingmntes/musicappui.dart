import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: fruitsui(),
    debugShowCheckedModeBanner: false,
  ));
}

class fruitsui extends StatelessWidget {
  List couraltopitem =["assets/image/img_24.png",
    "assets/image/img_25.png",
    "assets/image/img_26.png",
    "assets/image/img_27.png",
    "assets/image/img_28.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("FRUITS AND VEGETABLES"),
      backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: [
          CarouselSlider.builder(
    itemBuilder: (context, index, realIndex) => Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage(
    couraltopitem[index],
    ))),
    ),
    itemCount: couraltopitem.length,
    options: CarouselOptions(
    height: 50,
    aspectRatio: 16/90,
    viewportFraction: 1,
    initialPage: 0,
    enableInfiniteScroll: true,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 2),
    autoPlayCurve: Curves.easeInOutCubicEmphasized,
    enlargeCenterPage: true,
    enlargeFactor: .3,
    scrollDirection: Axis.horizontal,
    )

          ),
          Card(
            child: ListTile(
              leading:  CircleAvatar(backgroundImage: AssetImage("assets/image/img_12.png"),),
              title:
                  Text("fruits"),


              trailing:
                  Icon(Icons.star),


              ),
          ),

        ],
      ),





      );


  }
}
