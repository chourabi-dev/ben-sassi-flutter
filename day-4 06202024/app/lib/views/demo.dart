import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class DemoInstallPackage extends StatefulWidget {
  const DemoInstallPackage({super.key});

  @override
  State<DemoInstallPackage> createState() => _DemoInstallPackageState();
}

class _DemoInstallPackageState extends State<DemoInstallPackage> {

  int _bottomNavIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Container(), //destination screen
   floatingActionButton: FloatingActionButton(
     onPressed: (){},
   ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   bottomNavigationBar: AnimatedBottomNavigationBar(
      icons:  [
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ],
      activeIndex: _bottomNavIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (index) => setState(() => _bottomNavIndex = index),
      //other params
   ),
);
  }
}