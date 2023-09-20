import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: topicon30mints(),
  ));
}
class topicon30mints extends StatelessWidget {
  const topicon30mints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25,vertical: 15),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,color: Color(0xffcde0d5)),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset("assets/image/img_29.png",width: 40,),
                SizedBox(height: 20),
                Text("30 MIN POLICY",style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/image/img_30.png",width: 40,),
                SizedBox(height: 20),
                Text("TRACEABILITY",style:TextStyle(fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset("assets/image/img_31.png",width: 40,),
                SizedBox(height: 20),
                Text("LOCAL SOURCING",style:TextStyle(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
