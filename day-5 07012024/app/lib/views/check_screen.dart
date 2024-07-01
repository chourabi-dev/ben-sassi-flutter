import 'package:app/views/home.dart';
import 'package:app/views/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({super.key});

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {


  checkIfUserConnected() async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    bool? connected = prefs.getBool("connected");

    if( connected == null ){
      // redirect to login !!!
      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) {
        return new LoginScreen();
      },));
    }else{

      if( connected == false ){
        // login 
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) {
        return new LoginScreen();
      },));
      }else{
        // redirect to home
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) {
        return new HomeScreen();
      },));
      }

    }


  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // job => init
    checkIfUserConnected();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}