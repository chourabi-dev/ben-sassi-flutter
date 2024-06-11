import 'package:app/views/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  


  Future<void> _showMyDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Error !!!!!'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Wrong username or password'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          height: 300, 
          child: Column(
            children: [

                TextField(
                  controller: _username,
                  decoration: InputDecoration(
                    hintText: "Your username",
                    border:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                  ),
                ),

                SizedBox(height: 15,),

                TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Your password",
                    border:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                  ),
                ),


                SizedBox(height: 15,),

                Container(
                  child: GestureDetector(
                    onTap: (){
                        String username = _username.text;
                        String password = _password.text;


                        if( username == 'admin' && password == 'admin' ){
                          // navigate !!!
                          /* Navigator.push(context, new MaterialPageRoute(builder: (context) {
                            return HomePage();
                          },) ); */

                          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) {
                            return HomePage();
                          },) );

                        }else{
                           // alert !!! pop up 
                          _showMyDialog();
                        }
                        
                    },
                    child: Container(
                      color: Colors.orange,
                      padding: EdgeInsets.all(15),
                      height: 80,
                      child: Center(
                        child: Text('Login', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),

                )


            ],
          ),
        ),
      ),
        )
      )
    );
  }
}