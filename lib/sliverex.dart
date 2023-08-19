import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: sliveerexx(),
  ));
}
class sliveerexx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverAppBar(
          floating: true, /// ethi marri verum
          pinned: true, /// ethu mati false and trueakai nokamm
          title: Center(child: const Text("Sliver Appbar")),
          bottom: AppBar(
              elevation: 0,/// bottom appbar nte thazhae ulla vara pokan
              title: Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: const TextField(decoration: InputDecoration(
              hintText: 'Search here',
              prefixIcon: Icon(Icons.search),
              suffixIcon:  Icon(Icons.camera_alt)
            ),),
          )),
        ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 30,
                  (context, index) => Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    height: 80,
                    child: Text( style: TextStyle(fontSize: 30)," User $index"),
          )))
        ],
      ),
    );
  }
}
