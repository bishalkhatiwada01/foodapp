import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/ui/home_page.dart';

class BurgerPage extends StatefulWidget {
  const BurgerPage({super.key});

  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  elevation: 5,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                    },
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Card(
              elevation: 5,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  size: 35,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: const [
              SizedBox(height: 20),
              Text(
                "Chipotle Cheesy Chicken",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "A Signature flame-grilled chicken patty topped "
                "with smokeed beef",
                style: TextStyle(fontSize: 18),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 120,
              ),
              Image(
                image: AssetImage('assets/burger1.png'),
                width: 250,
              ),
            ],
          ),
        ));
  }
}
