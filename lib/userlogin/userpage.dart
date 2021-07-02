import 'package:flutter/material.dart';

import 'package:terrascope_app/userlogin/userinfo.dart';
import 'package:terrascope_app/userlogin/loginui.dart';

class UserPage extends StatelessWidget {
  final AsyncSnapshot<Object?> authsnapshot;
  const UserPage(this.authsnapshot);

  @override
  Widget build(BuildContext context) {
    // Determine size of screen
    Size size = MediaQuery.of(context).size;
    // Set the variable parameters based on size
    double boxwidth = size.width >= 500 ? 600 : size.width - 100;

    if (authsnapshot.connectionState == ConnectionState.waiting)
      return Center(child: CircularProgressIndicator());
    else if (authsnapshot.hasError)
      return Center(child: Text("something went wrong!"));
    else
      return Container(
        child: Center(
          child: Container(
            width: boxwidth,
            height: 700,
            alignment: Alignment.center,
            color: Colors.transparent,
            child: Listener(
              onPointerSignal: (pointersignal) {},
              child: UserView(authsnapshot.hasData),
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
            SizedBox(height: elementspacer * 6),
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
