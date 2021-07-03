import 'package:flutter/material.dart';

import 'package:geosentry_console/appbar/logobar.dart';
import 'package:geosentry_console/appbar/navbar.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool keeplogo = MediaQuery.of(context).size.width >= 360;

    return Container(
      margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: keeplogo
            ? [
                LogoBar(),
                Spacer(),
                NavBar(),
              ]
            : [
                Spacer(),
                NavBar(),
              ],
      ),
    );
  }
}
