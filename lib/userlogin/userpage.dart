import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    bool userloggedin = false;

    // Determine size of screen
    Size size = MediaQuery.of(context).size;
    // Set the variable parameters based on size
    double boxwidth = size.width >= 500 ? 600 : size.width - 100;

    return Container(
      child: Center(
        child: Container(
          width: boxwidth,
          height: 700,
          alignment: Alignment.center,
          color: Colors.transparent,
          child: Listener(
            onPointerSignal: (pointersignal) {},
            child: UserView(userloggedin),
          ),
        ),
      ),
    );
  }
}

class UserView extends StatelessWidget {
  final bool loginstate;
  const UserView(this.loginstate);

  @override
  Widget build(BuildContext context) {
    // Determine size of screen
    Size size = MediaQuery.of(context).size;
    double elementspacer = size.height >= 650 ? 20 : 10;

    List<Widget> listchildren = loginstate
        ? [
            SizedBox(height: elementspacer * 4),
            LoginStatus("logged in as"),
            SizedBox(height: elementspacer * 2),
            UserInfo(),
            SizedBox(height: elementspacer * 2),
            LogoutButton()
          ]
        : [
            SizedBox(height: elementspacer * 4),
            LoginStatus("not logged in"),
            SizedBox(height: elementspacer * 4),
            LoginButton()
          ];

    return ListView(
      shrinkWrap: false,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      children: listchildren,
    );
  }
}

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

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: new Border.all(
                color: Colors.white,
                width: 10.0,
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -2),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(0.7),
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("defaultuser.png"),
              foregroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80",
              ),
              //radius: 100,
              minRadius: 50,
              maxRadius: 100,
            ),
          ),
          SizedBox(height: 25),
          Container(
            child: Text(
              "Manish Meganathan",
              textAlign: TextAlign.center,
              style: GoogleFonts.lexendDeca(
                textBaseline: TextBaseline.alphabetic,
                textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
            ),
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
          )
        ],
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
          width: 200,
          height: 200,
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
            child: Icon(Icons.ac_unit),
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
