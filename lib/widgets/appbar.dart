import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LogoBox(),
          Spacer(),
          NavBar(),
        ],
      ),
    );
  }
}

enum MenuType { userlogin, regions, geogallery }

class MenuState extends ChangeNotifier {
  // Class Fields
  MenuType currentmenu;

  // Class Constructor
  MenuState(this.currentmenu);

  // A method of MenuState that updates the current
  // menu type and updates all listeners.
  updatemenu(MenuState newmenu) {
    // Update the current menu field
    this.currentmenu = newmenu.currentmenu;
    // Notify all listeners
    notifyListeners();
  }
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // A boolean that defines the break point
    // for shortening the nav bar elements
    bool keepwide = MediaQuery.of(context).size.width >= 720;

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
                onPressed: () {},
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
              width: keepwide ? 110 : basethickness,
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
                onPressed: () {},
                child: keepwide
                    ? Text(
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
              width: keepwide ? 130 : basethickness,
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
                onPressed: () {},
                child: keepwide
                    ? Text(
                        "Geo Gallery",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: selected.currentmenu == MenuType.geogallery
                                ? Colors.white
                                : Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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

class LogoBox extends StatelessWidget {
  const LogoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool keepwide = MediaQuery.of(context).size.width >= 560;

    RichText logofull = RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.montserratAlternates(
          textStyle: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w900,
          ),
          textBaseline: TextBaseline.alphabetic,
        ),
        children: [
          TextSpan(
            text: "terra",
            style: TextStyle(color: Colors.green),
          ),
          TextSpan(
            text: "scope",
            style: TextStyle(color: Colors.brown),
          ),
        ],
      ),
    );

    RichText logoshort = RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.montserratAlternates(
          textStyle: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w900,
          ),
        ),
        children: [
          TextSpan(text: "t", style: TextStyle(color: Colors.green)),
          TextSpan(text: "s", style: TextStyle(color: Colors.brown)),
        ],
      ),
    );

    return Container(
      height: 50,
      width: keepwide ? 280 : 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.7),
          )
        ],
      ),
      child: keepwide ? logofull : logoshort,
    );
  }
}
