import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:terrascope_app/appbar/menustate.dart';
import 'package:terrascope_app/appbar/custombar.dart';
import 'package:terrascope_app/regions/regionspage.dart';
import 'package:terrascope_app/geogallery/geogallerypage.dart';
import 'package:terrascope_app/userlogin/userpage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("islands.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                CustomBar(),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(50),
                    child: Consumer<MenuState>(
                      builder: (context, value, child) {
                        if (value.currentmenu == MenuType.geogallery)
                          return GeoGalleryPage();
                        else if (value.currentmenu == MenuType.regions)
                          return RegionsPage();
                        else
                          return UserPage(snapshot);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
