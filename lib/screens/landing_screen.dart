import 'package:flutter/material.dart';

class landingScreen extends StatelessWidget {
  const landingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
