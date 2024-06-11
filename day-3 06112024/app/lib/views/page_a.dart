import 'package:app/views/page_b.dart';
import 'package:flutter/material.dart';

class PageA extends StatefulWidget {
  const PageA({super.key});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return PageB( message: "bonjour !!!", );
            },) );
          },
          child: Text("send hello to page B"),
        ),
      ),
    );
  }
}