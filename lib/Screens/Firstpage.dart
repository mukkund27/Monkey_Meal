import 'package:flutter/material.dart';
import 'package:monkeymeal/Screens/Loginpage.dart';

import 'Signuppage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "assets/Images/Organe top shape.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                  top: 365,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Images/Group 873.png",
                        scale: 0.9,
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
                        height: height * 0.01,
                      ),
                      Text("FOOD DELIVERY",
                          style: TextStyle(
                              fontSize: width * 0.02,
                              color: Color(0xff4A4B4D))),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: height * 0.12,
          ),
          Text(
            "Discover the best foods from over 1,000",
            style: TextStyle(fontSize: width * 0.02, color: Color(0xff7C7D7E)),
          ),
          Text("restaurants and fast delivery to your doorstep",
              style:
                  TextStyle(fontSize: width * 0.02, color: Color(0xff7C7D7E))),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: height * 0.025),
            child: MaterialButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  )),
              height: height * 0.07,
              color: Color(0xffFC6011),
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: width * 0.032,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: height * 0.025),
            child: MaterialButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupPage(),
                  )),
              height: height * 0.075,
              minWidth: width * double.infinity,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.deepOrange,
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "Creat an account",
                style: TextStyle(
                    color: Colors.deepOrange, fontSize: width * 0.032),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
