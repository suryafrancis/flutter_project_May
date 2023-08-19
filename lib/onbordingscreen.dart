import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'clipperwidget.dart';
import 'drawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: onboardingsceenn(),
  ));
}
class onboardingsceenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
     // fullScreen: true,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.purple),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.pinkAccent),
        imagePadding: EdgeInsets.all(20),
        boxDecoration:
            BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orange,
                             Colors.orangeAccent,
                             Colors.deepOrangeAccent,
                             Colors.red
                    ],
                     begin: Alignment.topRight,end: Alignment.bottomLeft
                )));

    return IntroductionScreen(pages: [
      PageViewModel(
          decoration: pageDecoration,
          title: "First Page",
          body: "India Is My country, All Indians Are My Brothers and Sisters",
          image: Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/image/img_21.png"),
          )),
      PageViewModel(
        decoration: pageDecoration,
          title: "Second Page",
          body: "India Is My country, All Indians Are My Brothers and Sisters",
          image: Align(
            alignment: Alignment.center,
            child: Image.asset("assets/image/img_23.png"),
          )),
      PageViewModel(
        decoration: pageDecoration,
          title: "Third Page",
          body: "India Is My country, All Indians Are My Brothers and Sisters",
          image: Align(
            alignment: Alignment.center,
            child: Image.asset("assets/image/img_26.png"),
          ))
    ],
      onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>drawerex())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>clipperwid())),
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Text("Next"),
      done: const Text("Continue"),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Colors.black,
        activeSize: Size(25, 10),
        activeColor: Colors.red,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25),))),
    );
  }
}
