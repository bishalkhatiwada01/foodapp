import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BurgerCard1 extends StatelessWidget {
  BurgerCard1({super.key});

  final Color mainColor = const Color(0xffD40909);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child: Stack(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              // margin: EdgeInsets.only(top: 100),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 4.8.w, vertical: 1.8.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Chipotley Cheesy Chicken',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Rs.100",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Chikcen Burger',
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.8.w, vertical: 1.8.h),
              child: Container(
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 120,
                width: double.infinity,
              ),
            ),
            Positioned(
                top: -1.8.h,
                left: 25.w,
                child: Image.asset(
                  "assets/burger1.png",
                  height: 23.h,
                  width: 45.w,
                  fit: BoxFit.cover,
                )),
          ],
        ),
      ),
    );
  }
}
