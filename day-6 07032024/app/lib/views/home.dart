import 'package:app/firbase_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<dynamic> _contacts = [];



  getDATA() async{
    await Firebase .initializeApp(
                options: DefaultFirebaseOptions.currentPlatform
              );
            

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  firestore.collection("contacts").get().then((value){

    List<dynamic> tmp =[];

    value.docs.forEach((doc) {
        doc.get("fullname");

        tmp.add({
          "fullname": doc.get("fullname"),
          "email": doc.get("email"),
        });
    });


    setState(() {
      _contacts = tmp;
    });
  });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDATA();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( onPressed: () async{
    await Firebase .initializeApp(
                options: DefaultFirebaseOptions.currentPlatform
              );
            

  FirebaseFirestore firestore = FirebaseFirestore.instance;

      firestore.collection("contacts").add(
        { "fullname":"jason stathem", "email":"demo@demo.com","phone":"22558899" }
      ).then((value) => {});



      }, ),
      body: ListView.builder( itemCount: _contacts.length, itemBuilder: (context, index) {
        return ListTile(
          title: Text(_contacts[index]['fullname']),
          subtitle: Text(_contacts[index]['email']),
          
        );
      },),
    );
  }
}