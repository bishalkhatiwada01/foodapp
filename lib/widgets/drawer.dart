import 'package:flutter/material.dart';
import 'package:foodapp/ui/home_page.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple, // Set background color of drawer
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200, // Set height of the header
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.deepPurple, // Set background color of header
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'Welcome', // Title text
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 10), // Add some spacing
                    Text(
                      'Bishal', // Subtitle text
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home, // Icon for the item
                color: Colors.white,
              ),
              title: const Text(
                'Home', // Title text for the item
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));

                // Handle onTap event
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings, // Icon for the item
                color: Colors.white,
              ),
              title: const Text(
                'Settings', // Title text for the item
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                // Handle onTap event
              },
            ),
            // Add more list items as needed
          ],
        ),
      ),
    );
  }
}
