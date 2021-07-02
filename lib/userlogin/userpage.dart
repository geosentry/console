import 'package:flutter/material.dart';
import 'package:terrascope_app/userlogin/loggedin.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool userloggedin = true;

    if (userloggedin)
      return LoggedIn();
    else
      return Container();
  }
}
