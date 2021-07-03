import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LogoBar extends StatelessWidget {
  const LogoBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const githuburl = "https://github.com/geosentry";

    Widget logosrc = SvgPicture.network(
      "assets/assets/geosentry.svg ",
      width: 40,
      clipBehavior: Clip.antiAlias,
    );

    // The logobar when fully expanded
    Container logotext = Container(
      height: 50,
      width: 280,
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
      child: TextButton(
          onPressed: () {
            launch(githuburl);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              logosrc,
              SizedBox(width: 5),
              RichText(
                // textAlign: TextAlign.center,
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
                      text: "geo",
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(
                      text: "sentry",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
            ],
          )),
    );

    Container logo = Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.7),
          )
        ],
      ),
      child: TextButton(
        onPressed: () {
          launch(githuburl);
        },
        child: logosrc,
      ),
    );

    return MediaQuery.of(context).size.width >= 640 ? logotext : logo;
  }
}
