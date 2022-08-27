import 'package:flutter/material.dart';
import 'package:hazebi/screens/homescreen.dart';
import 'package:hazebi/screens/landing_screen.dart';
import 'package:hazebi/screens/signin.dart';

import 'package:hazebi/screens/verify_mail_screen.dart';

import 'package:hazebi/screens/signup.dart';


void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: HomeScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SignUpPage());
  }
}
