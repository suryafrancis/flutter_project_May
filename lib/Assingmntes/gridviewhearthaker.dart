
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: Gridscreen(),
  ));
}

class Gridscreen extends StatelessWidget {

  static String id = 'GridviewBuilder-Screen';

  @override
  Widget build(BuildContext context) {
    List cardContent = [
    ["assets/image/img_7.png",'Name: Apple\n Unit:Kg\n Price:250',Colors.grey,"Add to Cart"],["assets/image/img_8.png",'Name:Banana\n Unit:Kg\n Price:250',Colors.grey,"Add to Cart"],["assets/image/img_9.png",'Name:Grapes\n Unit:Kg\n Price:250',Colors.grey,"Add to Cart"],
      ["assets/image/img_10.png",'Name: Mango\n Unit:Kg\n Price:250',Colors.grey,"Add to Cart"],["assets/image/img_11.png",'Name:Rambootan\n Unit:Kg\n Price:250',Colors.grey,"Add to Cart"]

    ];
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: Text('PRODUCT VIEW'),
        backgroundColor: Colors.green.shade300,
      ),
      body: Container(
        child: GridView.builder(
            padding: const EdgeInsets.all(5.0),
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, index) =>
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: cardContent[index][2]),

                      child: Center(
                        child: ListTile(
                          leading: Image.asset(
                            cardContent[index][0],
                          ),
                          title: Text(
                            cardContent[index][1],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: Text(cardContent[index][3],
                          ),
                          ),
                        ),
                      ),
                    ),
      )
    );

  }
}



