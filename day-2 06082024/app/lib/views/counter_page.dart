import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _clicks = 0;





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          height: 250,
          child: Column(
          children: [
            Text("$_clicks clicks"),
            TextButton(onPressed: (){ 
                // change in the state !!!!!
                // _clicks++; DONT DO THIS

                // DO THIS !!!
                setState(() {
                  _clicks = _clicks + 1;
                });



             }, child: Text("click me"))
          ],
        ),
        ),
      ),
    );
  }
}