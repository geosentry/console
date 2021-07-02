import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginStatus extends StatelessWidget {
  final String message;
  const LoginStatus(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.7),
              )
            ],
          ),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: GoogleFonts.lexendDeca(
              textBaseline: TextBaseline.alphabetic,
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.7),
              ),
            ],
          ),
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<CircleBorder>(CircleBorder()),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "google.png",
                    width: 50,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Log In",
                    style: GoogleFonts.lexendDeca(
                      textBaseline: TextBaseline.alphabetic,
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
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
            child: Container(
              child: Text(
                "Log Out",
                style: GoogleFonts.lexendDeca(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
