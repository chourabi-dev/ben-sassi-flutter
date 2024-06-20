import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, initialIndex: 1, child: Scaffold(
      appBar: AppBar(
        title: Text("Expmle page"),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.directions_car),text: "Home",),
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_car)),
            
          ],
        )
      ),


      body: TabBarView(
        children: [
          Center(child: Text("Page 1")),
          Center(child: Text("Page 2")),
          Center(child: Text("Page 3")),
        ],
      ),
    ));
  }
}