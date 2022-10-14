import 'package:flutter/material.dart';
import 'package:monkeymeal/Screens/Firstpage.dart';

import 'Enterotp.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({Key? key}) : super(key: key);

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.055,
            ),
            Text(
              "Reset Password",
              textScaleFactor: width * 0.0038,
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Text(
              "Please enter your email to receive a",
              style: TextStyle(color: Color(0xff7C7D7E)),
              textScaleFactor: width * 0.0015,
            ),
            Text(
              "link to create a new password via email",
              style: TextStyle(color: Color(0xff7C7D7E)),
              textScaleFactor: width * 0.0015,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: height * 0.025),
              child: Container(
                height: height * 0.07,
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
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
                      builder: (context) => EntOtp(),
                    )),
                height: height * 0.07,
                color: Color(0xffFC6011),
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Send",
                  style: TextStyle(
                    fontSize: width * 0.032,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
