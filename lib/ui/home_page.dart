import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          // leading: const Icon(Icons.menu, color: Colors.black),
          leading: Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (Context) => const DrawerWidget()));
                },
              ),
            ],
          ),
          backgroundColor: Colors.white,

          title: const Text(
            "Chicago llL",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              width: 69,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  // color: Colors.red,
                  border: Border.all(color: Colors.red)),
              child: const Icon(Icons.shopping_bag_outlined, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
