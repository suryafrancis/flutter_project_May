import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(
  home:  screen(),
));
}

class screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      ),
      body:   Center(
        child: Text(
            "MY APP",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 40,
                fontWeight: FontWeight.bold
            )

        ),
      ),

    );
  }
}

