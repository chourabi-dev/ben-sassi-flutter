import 'package:app/views/tabs/home_tab.dart';
import 'package:app/views/tabs/settings_tab.dart';
import 'package:flutter/material.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {

  int bottomNavigationBarIndex = 0;

  List<Widget> _tabs = [
    HomeTab(),
    SettingTab()
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: _tabs.elementAt(bottomNavigationBarIndex),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavigationBarIndex,
        onTap: (int clicked_index){
          
          setState(() {
            bottomNavigationBarIndex = clicked_index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: 'Settings'),
          
        ]
      ),
    );
  }
}