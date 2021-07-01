import 'package:flutter/material.dart';
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
          UserBox(),
          SizedBox(width: 15),
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
            color: Colors.black,
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            enableFeedback: true,
          )),
    );
  }
}

class LogoBox extends StatelessWidget {
  const LogoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool keepwide = MediaQuery.of(context).size.width >= 900;

    RichText logofull = RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.montserratAlternates(
          textStyle: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w900,
          ),
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
      width: keepwide ? 300 : 60,
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
    bool keepwide = MediaQuery.of(context).size.width >= 600;

    return Container(
      width: keepwide ? 400 : 50,
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
    );
  }
}
