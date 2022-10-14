import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:monkeymeal/TextField.dart';

class Desert extends StatefulWidget {
  const Desert({Key? key}) : super(key: key);

  @override
  State<Desert> createState() => _DesertState();
}

class _DesertState extends State<Desert> {
  List<Map<String, dynamic>> list = [
    {
      "image": "assets/Images/french apple pie.png",
      "name": "French Apple Pie",
      "rate": "4.9",
      "subname": "Minute by tuk tuk",
    },
    {
      "image": "assets/Images/Dark chocolate cake.png",
      "name": "Dark chocolate Cake",
      "rate": "4.1",
      "subname": "Cakes by Tella",
    },
    {
      "image": "assets/Images/Street shake.png",
      "name": "Street Shake",
      "rate": "5.1",
      "subname": "Café Racer",
    },
    {
      "image": "assets/Images/cherry  browny.png",
      "name": "Fudgy Chewy Brownies",
      "rate": "4.5",
      "subname": "Minute by tuk tuk",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.015,
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: height * 0.015),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.chevron_left,
                              size: width * 0.04,
                            )),
                        Text(
                          "Desert",
                          style: TextStyle(fontSize: width * 0.035),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart,
                              size: width * 0.04,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            ComtxtField(
              Hintext: "Search Food",
              PrifixIcon: Icon(Icons.search),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Column(
              children: List.generate(
                4,
                (index) => Container(
                  height: height * 0.25,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: width * 0.005),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          list[index]["image"],
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.16, left: width * 0.015),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          list[index]["name"],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.03),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Text(
                              list[index]["rate"],
                              style: TextStyle(
                                  color: Colors.white, fontSize: width * 0.02),
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Text(
                              list[index]["subname"],
                              style: TextStyle(
                                  color: Colors.white, fontSize: width * 0.02),
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Text(
                              "Deserts",
                              style: TextStyle(
                                  color: Colors.white, fontSize: width * 0.02),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.035,
            ),
          ],
        ),
      ),
    );
  }
}
