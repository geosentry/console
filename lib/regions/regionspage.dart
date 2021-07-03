import 'package:flutter/material.dart';
import 'package:geosentry_console/regions/regionmenu.dart';

class RegionsPage extends StatelessWidget {
  const RegionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (size.width > 900)
      return Container(
        child: Row(
          children: [
            Flexible(
              child: RegionInfo(),
            ),
            SizedBox(width: 0),
            RegionMenu(),
          ],
        ),
      );
    else
      return Container(
        child: Column(
          children: [
            RegionMenu(),
            SizedBox(height: 40),
            Flexible(
              child: RegionInfo(),
            )
          ],
        ),
      );
  }
}

class RegionInfo extends StatelessWidget {
  const RegionInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
