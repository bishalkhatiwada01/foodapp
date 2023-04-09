import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:foodapp/widgets/bottom_navigation_bar.dart';
import 'package:foodapp/cards/burger_card1.dart';
import 'package:foodapp/widgets/drawer.dart';
import 'package:foodapp/cards/horizantal_scroll_view.dart';
import 'package:foodapp/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color mainColor = const Color(0xffD40909);

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Text('Home'),
    const Text('Favorites'),
    const Text('Account'),
    const Text('Settings'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        shadowColor: Colors.grey,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyDrawer()));
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.location_on,
              size: 27,
              color: Colors.red,
            ),
            Text(
              'Chicago IIL',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12, right: 13),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: mainColor,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Center(
                    child: Icon(Icons.shopping_bag_outlined),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.only(left: 30, top: 12),
                height: 18,
                width: 18,
                child: const Center(
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 10, color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Searchbar(),
            const HorizantalScroll(),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all >",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      )),
                ],
              ),
            ),
            const Burger_card1(),
            const Burger_card1(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
