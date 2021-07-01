import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoBar extends StatelessWidget {
  const LogoBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // A boolean that defines the break point
    // for shortening the logo bar element
    bool keepwide = MediaQuery.of(context).size.width >= 660;

    // The rich text widget to use when the element is expanded
    RichText logofull = RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.montserratAlternates(
          textStyle: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w900,
          ),
          textBaseline: TextBaseline.alphabetic,
        ),
        children: [
          TextSpan(
            text: "terra",
            style: TextStyle(color: Colors.green),
          ),
          TextSpan(
            text: "scope",
            style: TextStyle(color: Colors.brown),
          ),
        ],
      ),
    );

    // The rich text widget to use when the element is shrunk
    RichText logoshort = RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.montserratAlternates(
          textStyle: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w900,
          ),
        ),
        children: [
          TextSpan(text: "t", style: TextStyle(color: Colors.green)),
          TextSpan(text: "s", style: TextStyle(color: Colors.brown)),
        ],
      ),
    );

    return Container(
      height: 50,
      width: keepwide ? 280 : 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.7),
          )
        ],
      ),
      child: keepwide ? logofull : logoshort,
    );
  }
}
