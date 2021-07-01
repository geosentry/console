import 'package:flutter/material.dart';

import 'package:mdi/mdi.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:terrascope_app/appbar/menustate.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // A boolean that defines the break point
    // for shortening the nav bar elements
    bool keepwide = MediaQuery.of(context).size.width >= 820;

    // A border radius property shared by all menu elements
    BorderRadius borderradius = BorderRadius.circular(40);
    // A border shadow proprty shared by all menu elements
    BoxShadow boxshadow = BoxShadow(
      offset: Offset(0, -2),
      blurRadius: 30,
      color: Colors.black.withOpacity(0.7),
    );

    // A value that specifies the spacing between each menu button
    double menuspacing = 15;
    // A value that specifies the base thickness of the menu bar
    double basethickness = 50;

    return Consumer<MenuState>(
      builder: (context, selected, child) {
        return Row(
          children: [
            Container(
              width: basethickness,
              height: basethickness,
              decoration: BoxDecoration(
                color: selected.currentmenu == MenuType.userlogin
                    ? Colors.green
                    : Colors.white,
                borderRadius: borderradius,
                border: Border.all(
                  color: Colors.white,
                  width: 3.5,
                  style: selected.currentmenu == MenuType.userlogin
                      ? BorderStyle.solid
                      : BorderStyle.none,
                ),
                boxShadow: [boxshadow],
              ),
              child: TextButton(
                onPressed: () {
                  var prov = Provider.of<MenuState>(context, listen: false);
                  prov.updatemenu(MenuState(MenuType.userlogin));
                },
                child: Icon(
                  Icons.supervised_user_circle,
                  color: selected.currentmenu == MenuType.userlogin
                      ? Colors.white
                      : Colors.green,
                ),
                // style: buttonstyle,
              ),
            ),
            SizedBox(width: menuspacing),
            Container(
              width: keepwide ? 125 : basethickness,
              height: basethickness,
              decoration: BoxDecoration(
                color: selected.currentmenu == MenuType.regions
                    ? Colors.green
                    : Colors.white,
                borderRadius: borderradius,
                border: Border.all(
                  color: Colors.white,
                  width: 3.5,
                  style: selected.currentmenu == MenuType.regions
                      ? BorderStyle.solid
                      : BorderStyle.none,
                ),
                boxShadow: [boxshadow],
              ),
              child: TextButton(
                onPressed: () {
                  var prov = Provider.of<MenuState>(context, listen: false);
                  prov.updatemenu(MenuState(MenuType.regions));
                },
                child: keepwide
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Mdi.mapMarkerRadius,
                            color: selected.currentmenu == MenuType.regions
                                ? Colors.white
                                : Colors.green,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Regions",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: selected.currentmenu == MenuType.regions
                                    ? Colors.white
                                    : Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      )
                    : Icon(
                        Mdi.mapMarkerRadius,
                        color: selected.currentmenu == MenuType.regions
                            ? Colors.white
                            : Colors.green,
                      ),
              ),
            ),
            SizedBox(width: menuspacing),
            Container(
              width: keepwide ? 150 : basethickness,
              height: basethickness,
              decoration: BoxDecoration(
                color: selected.currentmenu == MenuType.geogallery
                    ? Colors.green
                    : Colors.white,
                borderRadius: borderradius,
                border: Border.all(
                  color: Colors.white,
                  width: 3.5,
                  style: selected.currentmenu == MenuType.geogallery
                      ? BorderStyle.solid
                      : BorderStyle.none,
                ),
                boxShadow: [boxshadow],
              ),
              child: TextButton(
                onPressed: () {
                  var prov = Provider.of<MenuState>(context, listen: false);
                  prov.updatemenu(MenuState(MenuType.geogallery));
                },
                child: keepwide
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Mdi.earth,
                            color: selected.currentmenu == MenuType.geogallery
                                ? Colors.white
                                : Colors.green,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Geo Gallery",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color:
                                    selected.currentmenu == MenuType.geogallery
                                        ? Colors.white
                                        : Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      )
                    : Icon(
                        Mdi.earth,
                        color: selected.currentmenu == MenuType.geogallery
                            ? Colors.white
                            : Colors.green,
                      ),
              ),
            )
          ],
        );
      },
    );
  }
}
