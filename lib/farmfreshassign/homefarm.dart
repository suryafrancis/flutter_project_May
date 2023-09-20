import 'package:flutter/material.dart';
import 'package:flutter_project_may/farmfreshassign/topicon30mintspolicy.dart';
import 'farmfreshtoopaapbar1.dart';
void main() {
  runApp(MaterialApp(
    home: homefarm(),
    debugShowCheckedModeBanner: false,
  ));
}
class homefarm extends StatelessWidget {
  const homefarm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(colors.white),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const farmtopappbar(),
            //SliverList.builder(
                //itemCount: _widgets.length,
               // itemBuilder: (context, index) => _widgets[index]),
          ],
        ),
      ),
      bottomNavigationBar: topicon30mints(),
    );
  }
}
