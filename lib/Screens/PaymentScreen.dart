import 'package:flutter/material.dart';

import '../TextField.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: height * 0.01),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.chevron_left,
                        size: width * 0.04,
                      ),
                      Text(
                        "Payment Details",
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
          Padding(
            padding: EdgeInsets.only(left: width * 0.03),
            child: Text(
              "Customize your payment method",
              style: TextStyle(
                fontSize: width * 0.022,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.03,
            ),
            child: Divider(
              thickness: 2,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.26,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade200, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 15,
                spreadRadius: 5,
                offset: Offset(0, 10),
              )
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.02,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "cash/card on delivery",
                        style: TextStyle(
                          fontSize: width * 0.025,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.check,
                        color: Colors.deepOrange,
                        size: width * 0.03,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                  ),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/Images/visacard.png"),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Text(
                        "** **",
                        style: TextStyle(
                          fontSize: width * 0.025,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Text(
                        "2187",
                        style: TextStyle(
                          fontSize: width * 0.025,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: height * 0.045,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(24),
                          border:
                              Border.all(width: 1.0, color: Color(0xfffc6011)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(0, 3),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Delete Card",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: width * 0.018,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                  ),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                  ),
                  child: Text(
                    "Other Methods",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.022,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.025),
            child: MaterialButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ModelSheet();
                  },
                );
              },
              color: Colors.deepOrangeAccent,
              height: height * 0.07,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: height * 0.03,
                  ),
                  Text(
                    "Add Another Credit/Debit Card",
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.025),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ModelSheet extends StatefulWidget {
  const ModelSheet({Key? key}) : super(key: key);

  @override
  State<ModelSheet> createState() => _ModelSheetState();
}

class _ModelSheetState extends State<ModelSheet> {
  bool switchselected = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Container(
      height: 500,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: height * 0.015, vertical: height * 0.015),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Add Credit/Debit Card",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.025),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: width * 0.035,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              ComtxtField(
                Hintext: "Card number",
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      "Expiry",
                      style: TextStyle(fontSize: width * 0.022),
                    ),
                    SizedBox(
                      width: width * 0.14,
                    ),
                    Container(
                      height: height * 0.07,
                      width: width * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "MM",
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 32),
                            alignLabelWithHint: true,
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
                      width: width * 0.015,
                    ),
                    Container(
                      height: height * 0.07,
                      width: width * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "YY",
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 38),
                            alignLabelWithHint: true,
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
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              ComtxtField(
                Hintext: "Security Code",
              ),
              SizedBox(
                height: height * 0.015,
              ),
              ComtxtField(
                Hintext: "First Name",
              ),
              SizedBox(
                height: height * 0.015,
              ),
              ComtxtField(
                Hintext: "Last Name",
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Text(
                    ("You can Remove Your Card"),
                  ),
                  Spacer(),
                  Switch(
                    value: switchselected,
                    onChanged: (value) {
                      setState(() {
                        switchselected = value;
                      });
                    },
                  )
                ],
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.deepOrangeAccent,
                height: height * 0.07,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: height * 0.03,
                    ),
                    Text(
                      "Add Card",
                      style: TextStyle(
                          color: Colors.white, fontSize: width * 0.025),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
