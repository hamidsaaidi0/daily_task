import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomText(
  String text, {
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.bold,
  Color? color,
}) =>
    Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        height: 1.3,
      ),
    );
Widget CustomButton(
    {required Size size, required String text, Function()? onPress}) {
  return Container(
    width: size.width * 0.9,
    height: size.width * 0.14,
    child: ElevatedButton(
      onPressed: onPress,
      child: CustomText(
        text,
        color: Colors.white,
        fontSize: 22,
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          Color(0xff76D2C7),
        ),
      ),
    ),
  );
}

Widget CustomTextField(
  Size size, {
  required String hintText,
  bool obscureText = false,
}) {
  return Container(
    width: size.width * 0.85,
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(29),
      color: Colors.white,
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
      ),
      obscureText: obscureText,
    ),
  );
}
