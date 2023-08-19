import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: stckex(),
  ));
}

class stckex extends StatelessWidget {
  const stckex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STACK EXAMPLE"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage("assets/image/img_17.png"))),
            ),
            // Container(
            //   height: 150,
            //   width: 100,
            //   color: Colors.yellow,
            // ),
            const Positioned(
                top: 30,
                left: 20,
                child: Text("Stack on my data", style: TextStyle(fontSize: 40 , color: Colors.white),)),
            Positioned(
              right: 100,
              bottom: 30,
              child: Container(
                height: 50,
                width: 100,
                child: Text("Rating 4", style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
