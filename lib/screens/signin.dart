import 'package:flutter/material.dart';
import 'package:hazebi/constants.dart';

import '../widgets/see.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  State<SignInPage> createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  late String email;
  late String password;
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    Widget o = See(onClick: (){setState((){
      showPassword = ! showPassword;
    });
    });
    Size size = MediaQuery.of(context).size;
    double h = size.height, w = size.width;
    return Center(child: SizedBox(width: w * 0.872, child: ListView(

        children:[
          SizedBox(height: h * 0.15),
              Constants.welcome,
          SizedBox(height: h * 0.01),
            Constants.text2,
          SizedBox(height: h * 0.03),
            TextField(
              obscureText:false,
              onChanged: (String value) async{

                setState((){
                  email = value;
                });
              },
              decoration: const InputDecoration(prefixIcon: Icon(Icons.mail),
                border: const OutlineInputBorder(),
                labelText: 'Email or phone number',
              ),
            ),
          SizedBox(height: h * 0.02),
            TextField(

              obscureText: !showPassword,
              onChanged: (String value) async{

                setState((){
                  password = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: o,
                border: const OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),SizedBox(height: h * 0.02),
        const Align(alignment: Alignment.centerRight,
        child:Text(
          "Forgot password?",
          textAlign: TextAlign.right,
          style: TextStyle(
            color: const Color(0xff2d3d5c),
            fontSize: 15,
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            letterSpacing: 0.50,
          ),
        )
          ,),

          TextButton(
            onPressed: () {},
            child:Container(
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Color(0xff1fcc79),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 19, ),
              child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.10,
                    ),
                  ),
              ),
            ),

        ]
      )));
  }
}
