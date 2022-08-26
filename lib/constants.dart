import 'dart:ui';
import 'package:flutter/material.dart';

class Constants {
  static Text welcome = const Text("Welcome Back!",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xff2d3d5c),
        fontSize: 22,
        fontFamily: "Inter",
        fontWeight: FontWeight.w700,
        letterSpacing: 0.50,
      ));
  static Text text2 = const Text(
    "Please enter your account here",
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Color(0xff9fa5c0),
      fontSize: 15,
      fontFamily: "Inter",
      fontWeight: FontWeight.w500,
      letterSpacing: 0.50,
    ),
  );
}
