import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),

          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),

          
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),

          
            ],
          )

          
        ],
      ),
    );
  }
}