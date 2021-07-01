import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:terrascope_app/appbar/menustate.dart';
import 'package:terrascope_app/appbar/custombar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("coast.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomBar(),
          Expanded(
            child: Consumer<MenuState>(
              builder: (context, value, child) {
                if (value.currentmenu == MenuType.userlogin)
                  return Container(
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                  );
                else
                  return Container(
                    margin: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                  );
              },
            ),
          ),
        ],
      ),
    );
  }
}
