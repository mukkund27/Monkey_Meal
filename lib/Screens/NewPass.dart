import 'package:flutter/material.dart';
import 'package:monkeymeal/Screens/Loginpage.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.055,
            ),
            Text(
              "New Password",
              textScaleFactor: width * 0.0035,
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Text(
              "Please enter your email to receive a ",
              style: TextStyle(color: Color(0xff7C7D7E)),
              textScaleFactor: width * 0.0015,
            ),
            Text(
              "link to  create a new password via email",
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
                    hintText: "New Password",
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
              child: Container(
                height: height * 0.07,
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
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
              height: height * 0.035,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: height * 0.025),
              child: MaterialButton(
                onPressed: () => Navigator.pushReplacement(
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
                  "Done",
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
