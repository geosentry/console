import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoggedIn extends StatelessWidget {
  const LoggedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine size of screen
    Size size = MediaQuery.of(context).size;
    // Set the variable parameters based on size
    double boxwidth = size.width >= 500 ? 400 : size.width - 100;
    double elementspacer = size.height >= 650 ? 20 : 10;

    return Container(
      child: Center(
        child: Container(
          width: boxwidth,
          height: 700,
          alignment: Alignment.center,
          color: Colors.transparent,
          child: Listener(
            onPointerSignal: (pointersignal) {},
            child: ListView(
              shrinkWrap: false,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              children: [
                SizedBox(height: elementspacer * 4),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Icon(
                      Icons.supervised_user_circle,
                      size: 90,
                      color: Colors.teal,
                    ),
                  ),
                ),
                SizedBox(height: elementspacer * 3),
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Material(
                        type: MaterialType.transparency,
                        child: Text(
                          "logged in as",
                          style: GoogleFonts.montserrat(
                            textBaseline: TextBaseline.alphabetic,
                            textStyle: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Flexible(
                        child: Material(
                          type: MaterialType.transparency,
                          child: Container(
                            width: boxwidth - 30,
                            child: Text(
                              "manishmeganathan@gmail.com",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textBaseline: TextBaseline.alphabetic,
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: elementspacer * 1),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          "Sign Out",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                            textBaseline: TextBaseline.alphabetic,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
