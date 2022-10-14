import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkeymeal/Mbutton.dart';
import 'package:monkeymeal/Screens/Loginpage.dart';
import 'package:monkeymeal/TextField.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.055,
              ),
              Text(
                "Sign up",
                textScaleFactor: width * 0.0038,
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Text(
                "Add your details to Signup",
                style: TextStyle(color: Color(0xff7C7D7E)),
                textScaleFactor: width * 0.0015,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              ComtxtField(
                Hintext: "Name",
              ),
              SizedBox(
                height: height * 0.025,
              ),
              ComtxtField(
                Hintext: "Email",
              ),
              SizedBox(
                height: height * 0.025,
              ),
              ComtxtField(
                Hintext: "Mobile No",
              ),
              SizedBox(
                height: height * 0.025,
              ),
              ComtxtField(
                Hintext: "Address",
              ),
              SizedBox(
                height: height * 0.025,
              ),
              ComtxtField(
                Hintext: "Password",
              ),
              SizedBox(
                height: height * 0.025,
              ),
              ComtxtField(
                Hintext: "Confirm Password",
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Mbutton(
                text: "Sign up",
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style: TextStyle(
                        color: Color(0xff7C7D7E), fontSize: width * 0.02),
                  ),
                  SizedBox(
                    width: height * 0.01,
                  ),
                  InkWell(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        )),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFC6011),
                          fontSize: width * 0.02),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
