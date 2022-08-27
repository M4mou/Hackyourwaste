import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:coupon_uikit/coupon_uikit.dart';

class CuponScreen extends StatelessWidget {
  const CuponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back_ios),
                Text(
                  "KFC Coupon",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff351c1c),
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(Icons.menu),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
              height: 600,
              child: CouponCard(
                curvePosition: 250,
                firstChild: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/kfc-logo.png"),
                          const Text(
                            "25% OFF",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Get 25% at your next KFC buy ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 5,
                            height: 5,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Reedeamble at all KFC restaurants in Tunisia.\nNot valid with any other discounts and promotions.\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 5,
                            height: 5,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Not valid with any other discounts and promotions.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 5,
                            height: 5,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "No cash value.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                secondChild: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Divider(thickness: 0.7),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Total amount:",
                              style: TextStyle(
                                color: Color(0xff9b9b9b),
                                fontSize: 14,
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "500 point",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xff222222),
                                fontSize: 18,
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3fd32525),
                                  blurRadius: 8,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xff22834b),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Text(
                            "Buy Coupon",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.copy_all_outlined,
                              color: Color(0xff004064),
                            ),
                            Text(
                              "Valid until 03 March 2022",
                              style: TextStyle(
                                color: Color(0x4c000000),
                                fontSize: 10,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.info_outline_rounded,
                              color: Color(0xff004064),
                            )
                          ],
                        )
                      ],
                    )),
                backgroundColor: Color.fromARGB(255, 246, 246, 246),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
