import 'package:app/views/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(child: Text("Login"), onPressed: ()async{
              final SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setBool("connected", true);
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) {
                return new HomeScreen();
              },));
          // connect !!
        },),
      ),
    );
  }
}