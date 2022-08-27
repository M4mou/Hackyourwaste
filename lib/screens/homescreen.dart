import 'package:flutter/material.dart';
import 'package:hazebi/screens/QR_code_scanner_screen.dart';
import 'package:hazebi/screens/homesubscreen.dart';
import 'package:hazebi/screens/landing_screen.dart';
import 'package:hazebi/screens/profile_screen.dart';
import 'package:hazebi/screens/signin.dart';
import 'package:hazebi/screens/signup.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

int _selectedIndex = 0;

class HomeScreenState extends State<HomeScreen> {
  static Image profilepic = Image.asset('assets/images/wael.png');
  double iconsize = 20;
  List<Widget> widgets = [
    HomeSubscreen(),
    Text('Shop'),
    Text('Scan'),
    Text('Notification'),
    profileScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: widgets[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: iconsize), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, size: iconsize), label: "Shop"),
          BottomNavigationBarItem(
              icon: ClipOval(
                child: Material(
                  color: Color(0xff27ae60), // Button color
                  child: InkWell(
                    splashColor: Color(0xff27ae60), // Splash color
                    onTap: () {},
                    child: SizedBox(
                        width: 56,
                        height: 56,
                        child: Icon(Icons.qr_code_scanner,
                            color: Colors.white, size: iconsize)),
                  ),
                ),
              ),
              label: "Scan"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_circle, size: iconsize),
              label: "Notification"),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profileScreen()),
                    );
                  },
                  child: Icon(Icons.person, size: iconsize)),
              label: "Profil"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff27ae60),
        onTap: _onItemTapped,
      ),
    );
  }
}
