import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:terrascope_app/home.dart';
import 'package:terrascope_app/appbar/menustate.dart';
import 'package:terrascope_app/userlogin/googlesignin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(Terrascope());
}

class Terrascope extends StatelessWidget {
  const Terrascope({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Terrascope",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        primaryColor: Color(0xFF67A617),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<MenuState>(
            create: (context) => MenuState(MenuType.userlogin),
          ),
          ChangeNotifierProvider<GoogleSignInProvider>(
            create: (context) => GoogleSignInProvider(),
          )
        ],
        child: Material(
          type: MaterialType.transparency,
          child: Home(),
        ),
      ),
    );
  }
}
