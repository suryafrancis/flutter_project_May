import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: clipperwid(),
  ));
}
class clipperwid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clipper Widget"),),
      body: ListView(
        children: [
          ClipRect(
            child: Container(
              child: Align(
                widthFactor: .6,
                heightFactor: .4,
                  child: Image.network("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
    
            ),
            ),
            ),
            ClipRRect(
            borderRadius: BorderRadius.circular(300),
              child: Image.network("https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
            ),
          ClipOval(
            child: Image.network("https://images.unsplash.com/photo-1689768054183-1c5a88055833?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDR8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
          ),
          ClipPath(
            // clipper: DiagonalPathClipperOne(),
            clipper: MovieTicketBothSidesClipper(),
            child:Container(
              height: 120,
              color: Colors.red,
              child: Center(child: Text("hello"),),
            ) ,
          )
        ],
      ),
    );
  }
}
