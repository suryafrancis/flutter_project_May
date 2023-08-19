
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: carosalexdemo(),
    debugShowCheckedModeBanner: false,
  ));
}
class carosalexdemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carosal"),
      ),
      body: CarouselSlider(items:List.generate(10, (index) =>
          Card(
        color: Colors.grey,
        child: Center(
        child: Icon(Icons.search,size: 40,)),
      )),
      // [
      //   Container(decoration: BoxDecoration(image:DecorationImage(
      //       image: AssetImage("assets/image/img_8.png")),
      //   )),
      //   Container(decoration: BoxDecoration(image:DecorationImage(
      //       image: AssetImage("assets/image/img_17.png")),
      //   )),
      //   Container(decoration: BoxDecoration(image:DecorationImage(
      //       image: AssetImage("assets/image/img_9.png")),
      //   )),
      //   Container(decoration: BoxDecoration(image:DecorationImage(
      //       image: AssetImage("assets/image/img_21.png")),
      //   )),
      // ],
          options: CarouselOptions(
        height: 200,
        aspectRatio: 16/90,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayCurve: Curves.easeInOutCubicEmphasized,
        enlargeCenterPage: true,
        enlargeFactor: .3,
        scrollDirection: Axis.horizontal


      )),
       );
  }
}
