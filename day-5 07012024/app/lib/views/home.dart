import 'package:app/views/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(child: Text("log out"), onPressed: () async{
          
          final SharedPreferences prefs = await SharedPreferences.getInstance();
              
              prefs.setBool("connected", false);
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) {
                return new LoginScreen();
              },));
          
        },),
      ),
    );
  }
}