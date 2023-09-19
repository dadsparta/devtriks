import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class PageText extends StatelessWidget {
  PageText({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.unbounded(fontWeight: FontWeight.w600, fontSize: 16),
    );
  }
}

class TitleText extends StatelessWidget {
  TitleText({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.unbounded(
        fontWeight: FontWeight.w600,
        color: const Color(
          0xFFFFFFFF,
        ),
        fontSize: 13,
      ),
    );
  }
}

class SubTitleText extends StatelessWidget {
  SubTitleText({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.unbounded(
        fontWeight: FontWeight.w400,
        color: const Color(
          0xFF55566E,
        ),
        fontSize: 10,
      ),
    );;
  }
}

