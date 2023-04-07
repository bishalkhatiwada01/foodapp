import 'package:flutter/material.dart';
import 'package:foodapp/ui/home_page.dart';

class BurgerPage extends StatelessWidget {
  const BurgerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Positioned(
              bottom: 315,
              left: 50,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                      offset: const Offset(
                        0.0,
                        4.0,
                      ),
                    ),
                  ],
                ),
                child: Card(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomePage()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Card(
            child: Container(
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
                icon: const Center(
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              // circle container
              Container(
                width: 500,
                height: 550,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                      offset: const Offset(
                        0.0,
                        4.0,
                      ),
                    ),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ClipPath(
                  clipper: HalfCircleClipper(),
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ),
              // Image  of burger
              Positioned(
                top: 190,
                left: 100,
                child: Image.asset(
                  "assets/burger1.png",
                  width: 230,
                ),
              ),
              // Letter S
              Positioned(
                bottom: 60,
                left: 50,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                        offset: const Offset(
                          0.0,
                          4.0,
                        ),
                      ),
                    ],
                  ),
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      width: 50,
                      height: 50,
                      child: const Center(
                          child: Text(
                        "S",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ),
              // Letter L
              Positioned(
                bottom: 60,
                right: 50,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                        offset: const Offset(
                          0.0,
                          4.0,
                        ),
                      ),
                    ],
                  ),
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      width: 50,
                      height: 50,
                      child: const Center(
                          child: Text(
                        "L",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ),
              // Letter M
              Positioned(
                bottom: 25,
                left: 185,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                        offset: const Offset(
                          0.0,
                          4.0,
                        ),
                      ),
                    ],
                  ),
                  child: const Card(
                    elevation: 5.0,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Center(
                          child: Text(
                        "M",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ),

              const Positioned(
                top: 30,
                left: 90,
                child: Text(
                  "Chipotle Cheesy Chicken",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const Positioned(
                top: 70,
                left: 25,
                child: Text(
                  "A Signature flame-grilled chicken patty topped",
                  style: TextStyle(fontSize: 17),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              const Positioned(
                top: 90,
                left: 135,
                child: Text(
                  " with smokeed beef",
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "+",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "4",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: const Center(
                    child: Text(
                  "-",
                  style: TextStyle(fontSize: 35),
                )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, right: 300),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Price",
                  style: TextStyle(fontSize: 19, color: Colors.black45),
                ),
                Text(
                  "Rs.140",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 2);
    path.arcToPoint(
      Offset(size.width, size.height / 2),
      radius: Radius.circular(size.width / 2),
      clockwise: false,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(HalfCircleClipper oldClipper) => false;
}
