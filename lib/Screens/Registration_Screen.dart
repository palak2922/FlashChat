import 'package:flutter/material.dart';
import 'package:flashchat/Components/Rounded_Button.dart';
import 'package:flashchat/Constants.dart';


class RegistrationPage extends StatefulWidget {
  static String id = 'Registration_Screen';

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/flash1.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),


            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Email'),
            ),
            SizedBox(
              height: 8.0,
            ),


            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Password'),
            ),
            SizedBox(
              height: 24.0,
            ),


            RoundedButton(
              color: Colors.lightBlueAccent,
              title: 'Register',
              onPresses: (){

              },
            ),


          ],
        ),
      ),
    );
  }
}



