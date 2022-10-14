import 'package:flutter/material.dart';
import 'package:monkeymeal/Screens/ResetPassword.dart';
import 'package:monkeymeal/Screens/Signuppage.dart';
import 'package:monkeymeal/Screens/WelcomeScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailControler = TextEditingController();
  TextEditingController passControler = TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.055,
                ),
                Text(
                  "Log in",
                  textScaleFactor: width * 0.0038,
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Text(
                  "Add your details to login",
                  style: TextStyle(color: Color(0xff7C7D7E)),
                  textScaleFactor: width * 0.0015,
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: height * 0.025),
                  child: TextFormField(
                    controller: emailControler,
                    textAlign: TextAlign.justify,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Email";
                      } 
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Your Email*",
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: height * 0.025),
                  child: TextFormField(
                    obscureText: true,
                    controller: passControler,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      } else if (value!.length < 6) {
                        return "Enter valid Password";
                      }
                    },
                    textAlign: TextAlign.justify,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Password*",
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                          50,
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
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcScreen(),
                          ),
                        );
                      }
                    },
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
                  height: height * 0.03,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResetPass(),
                      )),
                  child: Text(
                    "Forget Your Password?",
                    style: TextStyle(color: Color(0xff7C7D7E)),
                    textScaleFactor: width * 0.0015,
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Text(
                  "Or Login with",
                  style: TextStyle(
                      color: Color(0xff7C7D7E), fontSize: width * 0.018),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: height * 0.025),
                  child: MaterialButton(
                    onPressed: () {},
                    height: height * 0.07,
                    minWidth: height * 0.49,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xff707070),
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    color: Color(0xff4267B2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.08,
                        ),
                        Image.asset("assets/Images/Facebook.png"),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          ("Login WITH FACEBOOK"),
                          style: TextStyle(
                              fontSize: width * 0.025,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: height * 0.025),
                  child: MaterialButton(
                    onPressed: () {},
                    height: height * 0.07,
                    minWidth: height * 0.49,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xffDD4B39),
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    color: Color(0xffDD4B39),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.08,
                        ),
                        Image.asset("assets/Images/google-plus-logo.png"),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          ("Login WITH GOOGLE"),
                          style: TextStyle(
                              fontSize: width * 0.025,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: TextStyle(
                          color: Color(0xff7C7D7E), fontSize: width * 0.02),
                    ),
                    SizedBox(
                      width: height * 0.01,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          )),
                      child: Text(
                        "Sign up",
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
      ),
    );
  }
}
