import 'package:flutter/material.dart';
import 'package:hazebi/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class landingScreen extends StatelessWidget {
  const landingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.greencolor,
      body: Container(
        //decoration: BoxDecoration(color: Constants.greencolor),

        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                'assets/images/landingScreenImg.png',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                top: 380,
                left: 0,
                right: 0,
                child: Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/Ellipse2.png",
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text.rich(TextSpan(
                          text: 'Recycle the Present \n Save the ',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Future',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Constants.darkgreencolor),
                            )
                          ])),
                    ),
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
