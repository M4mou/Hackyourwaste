import 'package:flutter/material.dart';
import 'package:hazebi/screens/landing_screen.dart';
import 'package:hazebi/screens/signin.dart';
<<<<<<< HEAD
import 'package:hazebi/screens/verify_mail_screen.dart';
=======
import 'package:hazebi/screens/signup.dart';
>>>>>>> 9e44c11c90c503f29f63c19bc975d17bc78a4771

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
<<<<<<< HEAD
      home: verifyMailScreen(),
=======
      home: HomePage(),
>>>>>>> 9e44c11c90c503f29f63c19bc975d17bc78a4771
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
