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
            Container(
              height: 200, // Set height of the header
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple, // Set background color of header
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Welcome', // Title text
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 10), // Add some spacing
                    Text(
                      'John Doe', // Subtitle text
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
              leading: Icon(
                Icons.home, // Icon for the item
                color: Colors.white,

              ),
              title: Text(
                'Home', // Title text for the item
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));

                // Handle onTap event
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings, // Icon for the item
                color: Colors.white,

              ),
              title: Text(
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
