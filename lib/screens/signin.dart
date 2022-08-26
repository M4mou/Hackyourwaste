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
    return ListView(

        children:[
              Constants.welcome,
            Constants.text2,
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
            TextField(

              obscureText: !showPassword,
              onChanged: (String value) async{

                setState((){
                  password = value;
                });
              },
              decoration: InputDecoration(
                suffixIcon: o,
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            )]
      );
  }
}
