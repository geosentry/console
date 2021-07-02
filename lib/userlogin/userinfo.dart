import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

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
              foregroundImage: NetworkImage(user.photoURL!),
              //radius: 100,
              minRadius: 50,
              maxRadius: 100,
            ),
          ),
          SizedBox(height: 25),
          Container(
            child: Text(
              user.displayName!,
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
