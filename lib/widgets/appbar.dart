import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          LogoBox(),
          Spacer(),
          NavBar(),
        ],
      ),
    );
  }
}

class UserBox extends StatelessWidget {
  const UserBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.7),
          )
        ],
      ),
      child: TextButton(
        onPressed: () {},
        child: Icon(
          Icons.supervised_user_circle,
          color: Colors.green,
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(CircleBorder()),
          enableFeedback: true,
        ),
      ),
    );
  }
}

class LogoBox extends StatelessWidget {
  const LogoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool keepwide = MediaQuery.of(context).size.width >= 560;

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

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool keepwide = MediaQuery.of(context).size.width >= 720;

    return Row(
      children: [
        UserBox(),
        SizedBox(width: 15),
        Container(
          width: keepwide ? 110 : 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 20,
                color: Colors.black.withOpacity(0.7),
              )
            ],
          ),
          child: TextButton(
            onPressed: () {},
            child: keepwide
                ? Text(
                    "Regions",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                : Icon(
                    Mdi.mapMarkerRadius,
                    color: Colors.green,
                  ),
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: keepwide ? 130 : 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white, width: 3.5),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 20,
                color: Colors.black.withOpacity(0.7),
              )
            ],
          ),
          child: TextButton(
            onPressed: () {},
            child: keepwide
                ? Text(
                    "Geo Gallery",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                : Icon(
                    Mdi.earth,
                    color: Colors.white,
                  ),
          ),
        )
      ],
    );
  }
}
