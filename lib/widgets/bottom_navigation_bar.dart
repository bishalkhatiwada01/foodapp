// import 'package:flutter/material.dart';
// import 'package:foodapp/ui/acount_page.dart';
// import 'package:foodapp/ui/favorites_page.dart';
// import 'package:foodapp/ui/home_page.dart';
// import 'package:foodapp/ui/setting_page.dart';

// class MyBottomNavigationBar extends StatefulWidget {
//   const MyBottomNavigationBar({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
// }

// class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
//   int _selectedIndex = 0;

//   // Add a list of widget variables for each screen.
//   final List<Widget> _widgetOptions = const [
//     HomePage(),
//     FavoritesPage(),
//     AccountPage(),
//     SettingPage(),
//   ];

//   // Define the _onItemTapped function to handle when an item is tapped.
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Account',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget _buildBottomNavigationBar() {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'Favorites',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Account',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
    ],
    currentIndex: 0,
    selectedItemColor: Colors.red,
    onTap: (index) {
      // Handle taps on each tab here
    },
  );
}
