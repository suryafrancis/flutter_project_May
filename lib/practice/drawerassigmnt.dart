
import 'package:flutter/material.dart';

import 'Home_screen_wid.dart';
void main() {
  runApp(MaterialApp(
    home: DrawerWidget(),
    debugShowCheckedModeBanner: false,
  ));
}
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orange.shade200,
              Colors.red.shade200,
              Colors.pink.shade300
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZo0vD6DEzTU7_k9618M4C5VhDSHvT_rmeFQ&usqp=CAU"),
                ),
                title: Text(
                  "Sundar Pichal",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("CEO of Alphabet Inc.",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) =>Home_screen_widg()));
                  },
                  child: const SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text("Dashboard",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
              ListTileWidget(title: "Leads", icon:Icons.leak_add_sharp ),
              ListTileWidget(title: "Clients", icon: Icons.people),
              ListTileWidget(title: "Projects", icon: Icons.rocket_launch),
              ListTileWidget(title: "Patients", icon: Icons.pages_outlined),
              ListTileWidget(title: "Subscription", icon:Icons.subscriptions )
            ],
          ),
        ),
      ),
    );
  }
}


class ListTileWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const ListTileWidget({
    super.key,
    required this.title,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                width: 50,
              ),
              Text("$title",
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}

