import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 300,
          height: 500,
          alignment: Alignment.center,
          color: Colors.transparent,
          child: ListView(
            shrinkWrap: false,
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(height: 20),
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
    );
  }
}
