import 'package:flutter/material.dart';

class PageB extends StatefulWidget {
  final String message;
  const PageB({super.key, required this.message});

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  String _message = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _message = widget.message;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(_message),
      ),
    );
  }
}