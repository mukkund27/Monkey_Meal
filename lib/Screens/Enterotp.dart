import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'Loginpage.dart';
import 'NewPass.dart';

class EntOtp extends StatefulWidget {
  const EntOtp({Key? key}) : super(key: key);

  @override
  State<EntOtp> createState() => _EntOtpState();
}

class _EntOtpState extends State<EntOtp> {
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
              "We have sent an OTP to",
              textScaleFactor: width * 0.003,
            ),
            Text(
              "your Mobile",
              textScaleFactor: width * 0.003,
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Text(
              "Please check your mobile number 071*****12",
              style: TextStyle(color: Color(0xff7C7D7E)),
              textScaleFactor: width * 0.0015,
            ),
            Text(
              "continue to reset your password",
              style: TextStyle(color: Color(0xff7C7D7E)),
              textScaleFactor: width * 0.0015,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: height * 0.025),
              child: OtpTextField(
                numberOfFields: 4, fieldWidth: 60,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                borderColor: Color(0xFF512DA8),
                fillColor: Colors.grey.shade300,
                filled: true,

                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
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
                      builder: (context) => NewPass(),
                    )),
                height: height * 0.07,
                color: Color(0xffFC6011),
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: width * 0.032,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't Receive?",
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
                    "Click here",
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
    );
  }
}
