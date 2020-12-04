import 'package:flashchat/Screens/Login_Screen.dart';
import 'package:flashchat/Screens/Registration_Screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flashchat/Components/Rounded_Button.dart';




class WellcomePage extends StatefulWidget {
  static String id = 'welcome_Screen';

  @override
  _WellcomePageState createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> with SingleTickerProviderStateMixin {


  AnimationController animationController;
  Animation animation;


  @override
  void initState() {
    super.initState();
    //for normal animaitons
    animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      // upperBound: 100,
    );


    // for tween animation

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(animationController);




    animationController.forward();

    // animation.addStatusListener((status) {
    //   if(status == AnimationStatus.completed){
    //     animationController.reverse(from: 1.0);
    //   }
    //   else if(status == AnimationStatus.completed){
    //     animationController.forward();
    //   }
    // });

    setState(() {
    });
    animationController.addListener(() {
      print(animation.value);
    });


    //for curved animations
    // animation = CurvedAnimation(
    //   parent: animationController,
    //   curve: Curves.decelerate,
    // );


  }




  @override
  void dispose(){
    animationController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red.withOpacity(animationController.value),
      // backgroundColor: animation.value,
      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/flash1.png'),
                    height: 80,
                    // height: animation.value*100,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TyperAnimatedTextKit(
                  text: ['Flash Chat'],
                  // '${animationController.value.toInt()}%',     // animation for number counter
                  textStyle: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),

            RoundedButton(
              color: Colors.lightBlueAccent,
              title: 'Log In',
              onPresses: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
            ),


            RoundedButton(
              color: Colors.blueAccent,
              title: 'Registration',
              onPresses: () {
                Navigator.pushNamed(context, RegistrationPage.id);
              },
            ),



          ],
        ),
      ),
    );
  }
}













