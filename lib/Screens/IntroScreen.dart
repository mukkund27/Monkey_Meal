import 'package:flutter/material.dart';
import 'package:monkeymeal/TextField.dart';

import '../Mbutton.dart';

class introScreen extends StatefulWidget {
  const introScreen({Key? key}) : super(key: key);

  @override
  State<introScreen> createState() => _introScreenState();
}

class _introScreenState extends State<introScreen> {
  List<String> sizelist = [
    "Small"
        "Medium",
    "Large",
    "Extra Large",
    "Gient"
  ];
  List<String> Ingredients = [
    "Garlic",
    "Paneer",
    "Cheese",
    "Sezwan",
  ];
  String? dropdownvalue;
  String? dropdownvalue1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            "assets/Images/introimage.png",
            height: height * 0.45,
            width: width * 1,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: width * 0.3),
            child: Container(
              height: height * 0.7,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.03, horizontal: height * 0.018),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tandoori Chicken Pizza",
                          style: TextStyle(fontSize: width * 0.028),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.orange,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "4 Star Ratings",
                                  style: TextStyle(color: Colors.orange),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Rs. 750",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.03),
                                ),
                                Text(
                                  "/per portion",
                                  style: TextStyle(fontSize: width * 0.018),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "Description",
                          style: TextStyle(
                              fontSize: width * 0.022,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height * 0.005,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nOrnare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",
                          style: TextStyle(
                            fontSize: width * 0.019,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        Text(
                          "Customize your Order",
                          style: TextStyle(
                              fontSize: width * 0.025,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          height: height * 0.06,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: DropdownButton(
                                underline: SizedBox(),
                                icon: Padding(
                                  padding: EdgeInsets.only(left: width * 0.15),
                                  child: Icon(Icons.keyboard_arrow_down),
                                ),
                                hint: Text(
                                  "- Select the size of portion -",
                                  style: TextStyle(fontSize: width * 0.022),
                                ),
                                value: dropdownvalue,
                                onChanged: (value) {
                                  setState(() {
                                    dropdownvalue = value as String?;
                                  });
                                },
                                items: sizelist.map((items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList()),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          height: height * 0.06,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: DropdownButton(
                              underline: SizedBox(),
                              icon: Padding(
                                padding: EdgeInsets.only(left: width * 0.21),
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                              hint: Text("- Select the ingredients -"),
                              onChanged: (value) {
                                setState(() {
                                  dropdownvalue1 = value as String?;
                                });
                              },
                              value: dropdownvalue1,
                              items: Ingredients.map((items) {
                                return DropdownMenuItem(
                                    value: items, child: Text(items));
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Row(
                          children: [
                            Text(
                              "Number of Portions",
                              style: TextStyle(
                                  fontSize: width * 0.023,
                                  fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Container(
                              height: height * 0.035,
                              width: height * 0.06,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Container(
                                height: height * 0.035,
                                width: height * 0.06,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.orange,
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(child: Text(" 2 "))),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Container(
                              height: height * 0.035,
                              width: height * 0.06,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: height * 0.18,
                        width: height * 0.1,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(40))),
                      ),
                      Positioned(
                        left: width * 0.05,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: height * 0.16,
                              margin: EdgeInsets.symmetric(
                                  vertical: height * 0.015),
                              width: height * 0.43,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: -5,
                                      blurRadius: 10),
                                ],
                                borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(15),
                                  left: Radius.circular(40),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.02, top: width * 0.02),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total Price",
                                      style: TextStyle(fontSize: width * 0.015),
                                    ),
                                    SizedBox(
                                      height: height * 0.005,
                                    ),
                                    Text(
                                      "LKR 1500",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.022),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: height * 0.060),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        height: height * 0.05,
                                        color: Color(0xffFC6011),
                                        minWidth: double.infinity,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Center(
                                          child: Text(
                                            "shop",
                                            style: TextStyle(
                                              fontSize: width * 0.032,
                                              color: Color(0xffFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                left: width * 0.41,
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: height * 0.02),
                                  height: height * 0.06,
                                  width: height * 0.06,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 1,
                                            blurRadius: 5)
                                      ]),
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.orange,
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
