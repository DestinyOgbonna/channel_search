import 'package:channel_search/ui/search_page_channel/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// search result textform
InputDecoration textFormFields(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: GoogleFonts.lato(
          fontSize: 14,
          color: const Color(
            0xFFA1A9B3,
          )),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF7B8794)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF7B8794)),
      ));
}

InputDecoration recoveryFormFields(
  String hintText,
) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: GoogleFonts.lato(
          fontSize: 14,
          color: const Color(
            0xFFA1A9B3,
          )),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF7B8794)),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF7B8794)),
      ));
}

TextStyle headerStyle() {
  return GoogleFonts.lato(
      fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black);
}

TextStyle nameStyle() {
  return GoogleFonts.lato(
      fontSize: 16, fontWeight: FontWeight.w600, color: lightBlack);
}

TextStyle greenTextStyle() {
  return GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: greenColor,
  );
}

// ignore: must_be_immutable
class LoginTextField extends StatelessWidget {
  LoginTextField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.keyboardType,
      required this.obscureText})
      : super(key: key);
  String? hintText;
  String? labelText;
  // ignore: prefer_typing_uninitialized_variables
  final keyboardType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            labelStyle: GoogleFonts.lato(fontSize: 14, color: greenColor),
            hintStyle: GoogleFonts.lato(
                fontSize: 14,
                color: const Color(
                  0xFFA1A9B3,
                )),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: greenColor),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: blackColor,
              ),
            )));
  }
}
