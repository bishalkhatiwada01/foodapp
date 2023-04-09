import 'package:flutter/material.dart';
import 'package:foodapp/ui/home_page.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BurgerPage extends StatelessWidget {
  const BurgerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            child: IconButton(
              padding: const EdgeInsets.only(left: 5),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              child: IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 80, right: 50),
              child: Text(
                "Chipotley Cheesy Chicken",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "A signature flame-grilled chicken patty topped with smoked beef",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 450,
              child: Stack(
                children: [
                  const Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(250),
                          bottomRight: Radius.circular(250)),
                    ),
                    child: SizedBox(
                      height: 400,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    left: 115,
                    top: 100,
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        "assets/burger1.png",
                        width: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 320,
                    left: 40,
                    child: InkWell(
                      onTap: () {},
                      child: _cardButton(sizeName: 'S'),
                    ),
                  ),
                  Positioned(
                    top: 320,
                    right: 40,
                    child: InkWell(
                      onTap: () {},
                      child: _cardButton(sizeName: 'L'),
                    ),
                  ),
                  Positioned(
                    top: 380,
                    left: 180,
                    child: InkWell(
                      onTap: () {},
                      child: _cardButton(sizeName: 'M'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(1)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "1234",
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(1)),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Rs. 140',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffD40909),
                        minimumSize: const Size(110, 50),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Go to Cart',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _cardButton extends StatelessWidget {
  final String sizeName;

  _cardButton({required this.sizeName});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 6,
      child: TextButton(
        style: TextButton.styleFrom(minimumSize: const Size(20, 20)),
        onPressed: () {},
        child: Text(
          sizeName,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
