import 'package:flutter/material.dart';

class Home_screen_widg extends StatelessWidget {
  const Home_screen_widg({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AppBar"),
      ),
      body: ListView(
        children: [
          Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[

          SizedBox(
            height: 200,
            width: 400,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZo0vD6DEzTU7_k9618M4C5VhDSHvT_rmeFQ&usqp=CAU"),
          ),

SizedBox(
  height: 10,
),
        Text("Sundar Pichai",style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),),
        Text("As a boy growing up in Madras, Pichai slept with his brother in the living room of the cramped family home, but his father, an electrical engineer at the British multinational GEC, saw that the boys received a good education. At an early age Pichai displayed an interest in technology and an extraordinary memory, especially for telephone numbers. After earning a degree in metallurgy (B.Tech., 1993) and a silver medal at the Indian Institute of Technology Kharagpur, he was awarded a scholarship to study at Stanford University (M.S. in engineering and materials science, 1995). He remained in the United States thereafter, working briefly for Applied Materials (a supplier of semiconductor materials) and then earning an M.B.A. (2002) from the Wharton School of the University of Pennsylvania.")
            ],
          )
        ],
      ),
    );
  }

}
