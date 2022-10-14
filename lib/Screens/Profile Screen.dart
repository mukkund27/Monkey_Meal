import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monkeymeal/TextField.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.015),
                child: SafeArea(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Profile",
                              style: TextStyle(fontSize: width * 0.035),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.shopping_cart,
                                  size: width * 0.04,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: height * 0.12,
                            width: height * 0.12,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Images/NoPath - Copy (14).png")),
                                shape: BoxShape.circle),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: height * 0.015,
                              ),
                              Text(
                                "Edit Profile",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: width * 0.024),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Hi there Emilia!",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: width * 0.026),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Sign Out",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: width * 0.022,
                                color: Colors.blueAccent.shade700),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.040,
                        ),
                        Container(
                          height: height * 0.07,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            textAlign: TextAlign.justify,
                            decoration: InputDecoration(
                              labelText: "Name",
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
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          height: height * 0.07,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.justify,
                            decoration: InputDecoration(
                              labelText: "Email",
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
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          height: height * 0.07,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.justify,
                            decoration: InputDecoration(
                              labelText: "Mobile Number",
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
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          height: height * 0.07,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.streetAddress,
                            textAlign: TextAlign.justify,
                            decoration: InputDecoration(
                              labelText: "Address",
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
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          height: height * 0.07,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextField(
                            obscureText: true,
                            textAlign: TextAlign.justify,
                            decoration: InputDecoration(
                              labelText: "Password",
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
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          height: height * 0.07,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextField(
                            obscureText: true,
                            textAlign: TextAlign.justify,
                            decoration: InputDecoration(
                              labelText: "Confirm Password",
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
                        SizedBox(
                          height: height * 0.025,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          height: height * 0.07,
                          color: Color(0xffFC6011),
                          minWidth: double.infinity,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Save",
                            style: TextStyle(
                              fontSize: width * 0.032,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
