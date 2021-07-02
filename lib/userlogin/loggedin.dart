import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoggedIn extends StatelessWidget {
  const LoggedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine size of screen
    Size size = MediaQuery.of(context).size;
    // Set the variable parameters based on size
    double boxwidth = size.width >= 500 ? 600 : size.width - 100;
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
                SizedBox(height: elementspacer * 3),
                UserPicture(),
                SizedBox(height: elementspacer * 3),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text(
                        "logged in as",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          textBaseline: TextBaseline.alphabetic,
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                UserInformation("manishmeganathan@gmail.com"),
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
                SizedBox(height: elementspacer * 2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserPicture extends StatelessWidget {
  const UserPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
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
    );
  }
}

class UserInformation extends StatelessWidget {
  final String emailid;
  const UserInformation(this.emailid);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        children: [
          SizedBox(height: 20),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Material(
                type: MaterialType.transparency,
                child: Text(
                  emailid,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: GoogleFonts.montserrat(
                    textBaseline: TextBaseline.alphabetic,
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
