import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> list1 = [
    {
      "image": "assets/Images/offer.png",
      "name": "Offers",
    },
    {
      "image": "assets/Images/Srilanka.png",
      "name": "Sri Lanka",
    },
    {
      "image": "assets/Images/italian.png",
      "name": "Italian",
    },
    {
      "image": "assets/Images/indian.png",
      "name": "Indian",
    },
  ];
  List<Map<String, dynamic>> list2 = [
    {
      "image": "assets/Images/tuk tuk.png",
      "name": "Minute by tuk tuk",
    },
    {
      "image": "assets/Images/cafe de noir.png",
      "name": "Cafe de Noir",
    },
    {
      "image": "assets/Images/tella.png",
      "name": "Bakes by Tella",
    },
  ];
  List<Map<String, dynamic>> list3 = [
    {
      "image1": "assets/Images/Mp1.png",
      "name": "Café De Bambaa",
    },
    {
      "image1": "assets/Images/Mp2.png",
      "name": "Burger by Bella",
    },
  ];
  List<Map<String, dynamic>> Recent = [
    {
      "image": "assets/Images/R1.png",
      "name": "Mulberry Pizza by Josh",
    },
    {
      "image": "assets/Images/R2.png",
      "name": "Barita",
    },
    {
      "image": "assets/Images/R3.png",
      "name": "Pizza Rush Hour",
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
                          "Good Morning Akila!",
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
                      "Delivering to",
                      style: TextStyle(
                          fontSize: width * 0.018, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Text(
                          "Curent location",
                          style: TextStyle(
                            fontSize: width * 0.022,
                          ),
                        ),
                        SizedBox(
                          width: height * 0.03,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xffFC6011),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.025,
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
                    SizedBox(
                      height: height * 0.025,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.169,
              child: ListView.builder(
                itemCount: 4,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        height: height * 0.13,
                        width: height * 0.13,
                        margin: EdgeInsets.symmetric(horizontal: width * 0.01),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(list1[index]["image"]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        list1[index]["name"],
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.022),
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.015),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Restaurents",
                    style: TextStyle(
                        fontSize: width * 0.025, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        color: Color(0xffFC6011), fontSize: width * 0.022),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Column(
              children: List.generate(
                  3,
                  (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.25,
                            margin:
                                EdgeInsets.symmetric(vertical: height * 0.01),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(
                                    list2[index]["image"],
                                  ),
                                  fit: BoxFit.fitWidth),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.024, top: width * 0.005),
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
                                left: width * 0.02, bottom: width * 0.02),
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
                                  "(12.4 ratings) cafe ~ western Food",
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
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.015),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                        fontSize: width * 0.025, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        color: Color(0xffFC6011), fontSize: width * 0.022),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.32,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height * 0.2,
                        margin: EdgeInsets.symmetric(horizontal: width * 0.015),
                        width: height * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset(list3[index]["image1"],
                            fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.024, top: width * 0.015),
                        child: Text(
                          list3[index]["name"],
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
                            left: width * 0.02, bottom: width * 0.02),
                        child: Row(
                          children: [
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Text(
                              "cafe ~ western Food",
                              style: TextStyle(
                                  fontSize: width * 0.024,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w400),
                            ),
                            Icon(
                              Icons.star_rate,
                              color: Color(0xffFC6011),
                              size: width * 0.022,
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                  fontSize: width * 0.022,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.015),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Items",
                    style: TextStyle(
                        fontSize: width * 0.025, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        color: Color(0xffFC6011), fontSize: width * 0.022),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Column(
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.015),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 0.15,
                              width: height * 0.15,
                              margin:
                                  EdgeInsets.symmetric(vertical: width * 0.015),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(
                                      Recent[index]["image"],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.015),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: height * 0.018,
                                  ),
                                  Text(
                                    Recent[index]["name"],
                                    style: TextStyle(
                                        fontSize: width * 0.028,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    "cafe ~ western Food",
                                    style: TextStyle(
                                        fontSize: width * 0.024,
                                        color: Colors.grey.shade500,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Row(
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
                                        width: height * 0.005,
                                      ),
                                      Text(
                                        "(12.4 ratings)",
                                        style: TextStyle(
                                            fontSize: width * 0.020,
                                            color: Colors.grey.shade500,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
