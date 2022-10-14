import 'package:flutter/material.dart';

class Mbutton extends StatelessWidget {
  final text;

  const Mbutton({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height * 0.015),
      child: MaterialButton(
        onPressed: () {},
        height: height * 0.07,
        color: Color(0xffFC6011),
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Text(
          text,
          style: TextStyle(
            fontSize: width * 0.032,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}
