import 'package:app/firbase_config.dart';
import 'package:app/views/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: TextField(
                controller: _email,
                decoration: InputDecoration(hintText: "Email"),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: TextField(
                controller: _password,
                decoration: InputDecoration(hintText: "Password", ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: () async {
              // ...
              String email = _email.text;
              String password = _password.text;

              // FIREBASE AUTH
            await Firebase.initializeApp(
                options: DefaultFirebaseOptions.currentPlatform
              );
            

            FirebaseAuth auth = FirebaseAuth.instance;

            auth.signInWithEmailAndPassword(email: email, password: password).then((res){
              print(res);
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return HomeScreen();
              },) );  

            }).catchError((err){
              print("error");
              print(err);
            });



              


            }, child: Text("Login"))
            
            
              
          ]
        )
      ),
    );
  }
}