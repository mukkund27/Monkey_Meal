import 'package:flutter/material.dart';
import 'package:monkeymeal/Screens/Desert.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<Map<String, dynamic>> list = [
    {
      "image": "assets/Images/Food.png",
      "name": "Food",
      "item": "122 items",
    },
    {
      "image": "assets/Images/Beverges.png",
      "name": "Beverges",
      "item": "100 items",
    },
    {
      "image": "assets/Images/Deserts.png",
      "name": "Deserts",
      "item": "150 items",
    },
    {
      "image": "assets/Images/promotion.png",
      "name": "Pramotion",
      "item": "250 items",
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Menu",
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
                      height: height * 0.015,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "  Search Food",
                        fillColor: Color(0xffEAE8E8),
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.7,
                  width: height * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(55))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 20),
                  child: Column(
                    children: List.generate(
                      4,
                      (index) => GestureDetector(
                        onTap: () {
                          if (index == 2) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Desert(),
                                ));
                          }
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: height * 0.13,
                              margin: EdgeInsets.symmetric(
                                  vertical: height * 0.015),
                              width: height * 0.4,
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
                                  left: Radius.circular(50),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.12, top: width * 0.02),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      list[index]["name"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.03),
                                    ),
                                    SizedBox(
                                      height: height * 0.015,
                                    ),
                                    Text(
                                      list[index]["item"],
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: width * 0.022),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: width * 0.29,
                              top: 0,
                              bottom: 0,
                              child: Image.asset(
                                list[index]["image"],
                                scale: 0.8,
                              ),
                            ),
                            Positioned(
                                left: width * 0.375,
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: height * 0.02),
                                  height: height * 0.050,
                                  width: height * 0.050,
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
                                    Icons.chevron_right,
                                    color: Colors.grey,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
