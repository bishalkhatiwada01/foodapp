
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'drawer.dart';

class App_Bar extends StatelessWidget {
  const App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (Context)=>MyDrawer()));
          },
        ),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              // ignore: deprecated_member_use
              FontAwesomeIcons.mapMarkerAlt,
              color: Colors.red,
            ),
            Text(
              'Chicago',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  // color: Colors.red,
                  border: Border.all(color: Colors.red)),
              child: const Icon(Icons.shopping_bag_outlined, size: 30),
            ),
          ),
        ],
      );
  }
}






//
// Scaffold(
// appBar: AppBar(
// elevation: 0,
// leading: IconButton(
// icon: const Icon(Icons.menu),
// color: Colors.black,
// onPressed: () {},
// ),
// backgroundColor: Colors.white,
// title: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: const [
// Icon(
// // ignore: deprecated_member_use
// FontAwesomeIcons.mapMarkerAlt,
// color: Colors.red,
// ),
// Text(
// 'Chicago',
// style: TextStyle(
// fontSize: 20.0,
// fontWeight: FontWeight.bold,
// color: Colors.black,
// ),
// ),
// ],
// ),
// actions: [
// Padding(
// padding: const EdgeInsets.only(right: 10),
// child: Container(
// width: 50,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.red,
// // color: Colors.red,
// border: Border.all(color: Colors.red)),
// child: const Icon(Icons.shopping_bag_outlined, size: 30),
// ),
// ),
// ],
// ),
// body: Container(
// color: Colors.white,
// child: Column(
// children: [
// const Searchbar(),
// Text('bishal'),
//
//
// ],
// ),
// ),
//
// );