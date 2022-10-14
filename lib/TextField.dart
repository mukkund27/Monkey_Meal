import 'package:flutter/material.dart';

class ComtxtField extends StatelessWidget {
  final Hintext;
  final PrifixIcon;
  final SuffixIcon;

  const ComtxtField({Key? key, this.Hintext, this.PrifixIcon, this.SuffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.07,
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
          prefixIcon: PrifixIcon,
          suffixIcon: SuffixIcon,
          hintText: Hintext,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
