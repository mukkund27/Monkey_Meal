import 'dart:async';

import 'package:flutter/material.dart';

import 'Screens/Firstpage.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => FirstPage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 1,
            width: width * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Images/01.png"), fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/Images/Group 873.png",
                scale: 0.7,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Meal",
                      style: TextStyle(
                          fontSize: width * 0.035,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFC6011))),
                  Text("Monkey",
                      style: TextStyle(
                          fontSize: width * 0.035,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A4B4D))),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Text("FOOD DELIVERY",
                  style: TextStyle(
                      fontSize: width * 0.02, color: Color(0xff4A4B4D))),
            ],
          )
        ],
      ),
    );
  }
}
