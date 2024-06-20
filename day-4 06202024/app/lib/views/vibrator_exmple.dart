import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';


class VibratorExmple extends StatefulWidget {
  const VibratorExmple({super.key});

  @override
  State<VibratorExmple> createState() => _VibratorExmpleState();
}

class _VibratorExmpleState extends State<VibratorExmple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(child: Text("click me"), onPressed: () async {
          // Vibrate for 500ms

          bool ?hasVibrator =   await Vibration.hasVibrator();

          if ( hasVibrator != null ) {
            if( hasVibrator == true ){
              Vibration.vibrate(duration: 5000);
            }
          }

          
          
        },),
      ),
    );
  }
}