import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
