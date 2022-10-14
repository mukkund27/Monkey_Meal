import 'package:flutter/material.dart';

import 'Screens/AboutusScreen.dart';
import 'Screens/BottonNavScreen.dart';
import 'Screens/ChechoutScreen.dart';
import 'Screens/Desert.dart';
import 'Screens/Firstpage.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/IntroScreen.dart';
import 'Screens/Latest Offer.dart';
import 'Screens/Loginpage.dart';
import 'Screens/MenuScrren.dart';
import 'Screens/MoreScreen.dart';
import 'Screens/MyorderScreen.dart';
import 'Screens/Notification.dart';
import 'Screens/PaymentScreen.dart';
import 'Screens/Profile Screen.dart';
import 'Screens/Signuppage.dart';
import 'introscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: IntroScreen(),
    );
  }
}
