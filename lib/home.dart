import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:geosentry_console/appbar/menustate.dart';
import 'package:geosentry_console/appbar/custombar.dart';
import 'package:geosentry_console/regions/regionspage.dart';
import 'package:geosentry_console/geogallery/geogallerypage.dart';
import 'package:geosentry_console/userlogin/userpage.dart';

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
                image: NetworkImage("assets/assets/islands.jpg"),
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
