import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/widgets/appbar.dart';
import 'package:foodapp/widgets/burger_card.dart';
import 'package:foodapp/widgets/burger_card1.dart';
import 'package:foodapp/widgets/drawer.dart';
import 'package:foodapp/widgets/horizantal_scroll_view.dart';
import 'package:foodapp/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const App_Bar(),
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
                        child: Text(
                          "View all >",
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        )),
                  ],
                ),
              ),
              Burger_card1()
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(224, 224, 224, 1)
// backgroundColor: Colors.white,

        );
  }
}
