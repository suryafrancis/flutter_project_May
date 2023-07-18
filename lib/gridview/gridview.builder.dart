import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: grisviewbuilder2(),
  ));
}
class grisviewbuilder2 extends StatelessWidget {
  const grisviewbuilder2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount:20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20,crossAxisSpacing: 40),
          itemBuilder: (context,index)
      {
        return Card(
          color: Colors.lime,
          child: Center(
            child: Text(" USER $index", style: const TextStyle(fontSize:20,color:Colors.purple),
            ) ),

        );
      }),
    );
  }
}
