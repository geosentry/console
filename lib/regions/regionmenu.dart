import 'dart:math';
import 'package:flutter/material.dart';

class RegionMenu extends StatelessWidget {
  const RegionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retrive the size of the screen
    Size screen = MediaQuery.of(context).size;
    // Determine if the screen is too narrow for a row layout
    bool isnarrow = screen.width < 900;
    // Determine if the screen is large enough for a wider row layout
    bool iswide = screen.width > 1440 && screen.height > 900;

    return Container(
      // Set width and height based on screen flags
      width: isnarrow ? null : (iswide ? 250 : 220),
      height: isnarrow ? 80 : null,
      // Use a LayoutBuilder for building based on the
      // screen flags and container constraints
      child: LayoutBuilder(
        builder: (context, box) {
          // Build for row layout
          if (isnarrow) {
            // Determine the radius of the RegionChoice by taking the minimum
            // value between the height of the RegionMenu and the a third of
            // the width of the RegionMenu (3 Choices).
            double radius = min(box.maxHeight, box.maxWidth / 3);
            // Keep radius to a minimum of 120
            radius = radius < 60 ? 60 : radius;

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RegionChoice(radius),
                  SizedBox(width: 25),
                  RegionChoice(radius),
                  SizedBox(width: 25),
                  RegionChoice(radius)
                ],
              ),
            );

            // Build for column layout
          } else {
            // Determine the radius of the RegionChoice by taking the minimum
            // value between the width of the RegionMenu and the a third of
            // the height of the RegionMenu (3 Choices) and subtract 50 for
            // equal spacing with the outer margin.
            double radius = min(box.maxHeight / 3, box.maxWidth) - 50;
            // Keep radius to a minimum of 120
            radius = radius < 120 ? 120 : radius;

            return SingleChildScrollView(
              padding: EdgeInsets.only(left: 50, right: 0),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  RegionChoice(radius),
                  SizedBox(height: 35),
                  RegionChoice(radius),
                  SizedBox(height: 35),
                  RegionChoice(radius),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class RegionChoice extends StatelessWidget {
  final double radius;
  const RegionChoice(this.radius, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
