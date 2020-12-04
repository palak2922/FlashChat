
import 'package:flutter/material.dart';

import 'Screens/Chat_Screen.dart';
import 'Screens/Login_Screen.dart';
import 'Screens/Registration_Screen.dart';
import 'Screens/Welcome_Screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: WellcomePage.id,
      routes: {
        WellcomePage.id : (context) => WellcomePage(),
        LoginPage.id : (context) => LoginPage(),
        RegistrationPage.id : (context) => RegistrationPage(),
        ChatPage.id : (context) => ChatPage(),
      },
    );
  }
}





