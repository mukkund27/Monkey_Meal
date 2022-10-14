import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  List<Map<String, dynamic>> list2 = [
    {
      "image": "assets/Images/offer1.png",
      "name": "Café de Noires",
    },
    {
      "image": "assets/Images/offer2.png",
      "name": "Isso",
    },
    {
      "image": "assets/Images/offer3.png",
      "name": "Cafe Beans",
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
                          "Latest Offer",
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
                    Text(
                      "Find discounts, Offers special meals and more!",
                      style: TextStyle(
                        fontSize: width * 0.018,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: height * 0.05,
                      color: Color(0xffFC6011),
                      minWidth: height * 0.050,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Check Offer",
                        style: TextStyle(
                          fontSize: width * 0.022,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Column(
                      children: List.generate(
                          3,
                          (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.25,
                                    margin: EdgeInsets.symmetric(
                                        vertical: height * 0.01),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(list2[index]["image"]),
                                          fit: BoxFit.fitWidth),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: width * 0.024,
                                        top: width * 0.005),
                                    child: Text(
                                      list2[index]["name"],
                                      style: TextStyle(
                                          fontSize: width * 0.03,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: width * 0.02,
                                        bottom: width * 0.02),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate,
                                          color: Color(0xffFC6011),
                                          size: width * 0.022,
                                        ),
                                        SizedBox(
                                          width: height * 0.005,
                                        ),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                              fontSize: width * 0.022,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          width: height * 0.01,
                                        ),
                                        Text(
                                          "(12.4 ratings) cafe ~    western Food",
                                          style: TextStyle(
                                              fontSize: width * 0.020,
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
