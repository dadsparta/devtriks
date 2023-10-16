import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurantdelapp/utils/consts/colors.dart';


class AppBarText extends StatelessWidget {
  const AppBarText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: 28,
        color: textColor,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class InvText extends StatelessWidget {
  const InvText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        fontSize: 13,

        color: textLowColor,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
