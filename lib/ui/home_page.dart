// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:foodapp/widgets/bottom_navigation_bar.dart';

// import 'package:foodapp/widgets/burger_card1.dart';
// import 'package:foodapp/widgets/drawer.dart';
// import 'package:foodapp/widgets/horizantal_scroll_view.dart';
// import 'package:foodapp/widgets/search_bar.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.menu),
//           color: Colors.black,
//           onPressed: () {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (Context) => MyDrawer()));
//           },
//         ),
//         backgroundColor: Colors.white,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Icon(
//               // ignore: deprecated_member_use
//               FontAwesomeIcons.mapMarkerAlt,
//               color: Colors.red,
//             ),
//             Text(
//               'Chicago',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 10),
//             child: Container(
//               width: 50,
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.red,
//                   // color: Colors.red,
//                   border: Border.all(color: Colors.red)),
//               child: const Icon(Icons.shopping_bag_outlined, size: 30),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Searchbar(),
//             const HorizantalScroll(),
//             Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     "Popular",
//                     style: TextStyle(
//                       fontSize: 23,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   TextButton(
//                       onPressed: () {},
//                       child: const Text(
//                         "View all >",
//                         style: TextStyle(color: Colors.red, fontSize: 16),
//                       )),
//                 ],
//               ),
//             ),
//             const Burger_card1(),
//             const Burger_card1(),
//           ],
//         ),

//       ),
//     );
//   }
// }

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
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyDrawer()));
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
