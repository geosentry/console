import 'package:flutter/material.dart';

// Enumerated type that defines the types of menu states
enum MenuType { userlogin, regions, geogallery }

// A class that represents a menu state
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
