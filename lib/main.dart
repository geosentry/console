import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:terrascope_app/widgets/appbar.dart';

void main() {
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
      home: ChangeNotifierProvider<MenuState>(
        create: (context) => MenuState(MenuType.userlogin),
        child: Home(),
      ),
    );
  }
}

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
          CustomAppBar(),
          Expanded(
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                height: 250,
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
