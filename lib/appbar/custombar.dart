import 'package:flutter/material.dart';

import 'package:terrascope_app/appbar/logobar.dart';
import 'package:terrascope_app/appbar/navbar.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LogoBar(),
          Spacer(),
          NavBar(),
        ],
      ),
    );
  }
}
