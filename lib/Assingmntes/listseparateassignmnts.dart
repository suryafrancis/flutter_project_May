import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red.shade50),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Text(
                  months[index],
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            );
          },
          separatorBuilder: ((context, index) {
            if (index % 5 == 0) {
              return Card(
                elevation: 2,
                color: Colors.red,
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: const Text(
                    "Adveritesment",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              );
            } else {
              return const SizedBox();
            }
          }),
          itemCount: months.length),
    );
  }
}