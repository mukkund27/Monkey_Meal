import 'package:flutter/material.dart';
import 'package:monkeymeal/Screens/BottonNavScreen.dart';

import 'HomeScreen.dart';

class WelcScreen extends StatefulWidget {
  const WelcScreen({Key? key}) : super(key: key);

  @override
  State<WelcScreen> createState() => _WelcScreenState();
}

class _WelcScreenState extends State<WelcScreen> {
  List<Map<String, dynamic>> list1 = [
    {
      "Image": "assets/Images/Find food you love vector1.png",
      "name": "Find Food You Love",
      "d1": "Discover the best foods from over 1,000",
      "d2": "restaurants and fast delivery to your doorstep",
    },
    {
      "Image": "assets/Images/Delivery vector2.png",
      "name": "Fast Delivery",
      "d1": "Fast food delivery to your home, office",
      "d2": "wherever you are",
    },
    {
      "Image": "assets/Images/Live tracking vector3.png",
      "name": "Live Tracking",
      "d1": "Real time tracking of your food on the app",
      "d2": "once you placed the order",
    }
  ];
  int selected = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.79,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        selected = value;
                      });
                    },
                    itemCount: 3,
                    controller: pageController,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            height: height * 0.6,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  list1[index]["Image"],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            list1[index]["name"],
                            textScaleFactor: width * 0.003,
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Text(
                            list1[index]["d1"],
                            style: TextStyle(color: Color(0xff7C7D7E)),
                            textScaleFactor: width * 0.0015,
                          ),
                          Text(
                            list1[index]["d2"],
                            style: TextStyle(color: Color(0xff7C7D7E)),
                            textScaleFactor: width * 0.0015,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Positioned(
                  top: height * 0.54,
                  left: 0,
                  right: 0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.005),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selected = index;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: selected == index
                                        ? Color(0xffFC6011)
                                        : Colors.grey.shade300,
                                  ),
                                ),
                              ))),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: height * 0.025),
              child: MaterialButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavScreen(),
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
          ],
        ),
      ),
    );
  }
}
