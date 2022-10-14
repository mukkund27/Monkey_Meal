import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<Map<String, dynamic>> info = [
    {"icon": Icons.payment_sharp, "name": "Payments Detail"},
    {"icon": Icons.shopping_bag, "name": "My Orders"},
    {"icon": Icons.notifications, "name": "Notifications"},
    {"icon": Icons.indeterminate_check_box, "name": "Inbox"},
    {"icon": Icons.info, "name": "About us"},
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.01,
                horizontal: width * 0.03,
              ),
              child: Row(
                children: [
                  Text(
                    "More",
                    style: TextStyle(
                      fontSize: width * 0.055,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.shopping_cart_rounded,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: height * 0.015),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: height * 0.01,
                              horizontal: width * 0.03),
                          height: height * 0.11,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.06,
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.grey.shade400,
                                  child: Icon(
                                    info[index]['icon'],
                                    color: Colors.grey.shade900,
                                    size: width * 0.075,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  info[index]['name'],
                                  style: TextStyle(
                                    fontSize: width * 0.04,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.28,
                                ),
                                index == 2
                                    ? CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.deepOrange,
                                        child: Text(
                                          "20",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.03,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          heightFactor: height * 0.0032,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
