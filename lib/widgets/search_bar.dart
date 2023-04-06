import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      elevation: 5,
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search our Delicious Burger',
          hintStyle: TextStyle(
            fontSize: 16
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 20,left: 20),
            child: Icon(Icons.search,size: 30),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        ),
      ),
    );
  }
}
