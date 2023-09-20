import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: carousalfarm2(),
  ));
}
class carousalfarm2 extends StatelessWidget {

  List couraltopitem =["assets/image/img_24.png",
  "assets/image/img_25.png",
  "assets/image/img_26.png",
  "assets/image/img_27.png",
  "assets/image/img_28.png"
];
  @override
  Widget build(BuildContext context) {

    return CarouselSlider.builder(
    itemBuilder: (context, index, realIndex) => Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                couraltopitem[index],
              ))),
    ),
    itemCount: couraltopitem.length,
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


        ));


  }
}
