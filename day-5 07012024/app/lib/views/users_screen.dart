import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {

  List<dynamic> _users = [];
  bool _isLoading = true;


  getDATA() async{ 

    setState(() {
      _isLoading = true;
    });

  var url =  Uri.https('jsonplaceholder.typicode.com', '/users', {});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);

  setState(() {
      _isLoading = false;
    });


  if (response.statusCode == 200) {
    var jsonResponse =  jsonDecode(response.body);
    print(jsonResponse);
    setState(() {
      _users = jsonResponse;
    });
    

  } else {
    print('Request failed with status: ${response.statusCode}.');
  }



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
      body: 

      _isLoading == true ? Center(child: CircularProgressIndicator(),) :
      
      
      
      
      ListView.builder(itemCount: _users.length, itemBuilder: (context, index) {
        return ListTile(
          title: Text( _users[index]['name'] ),
          subtitle: Text( _users[index]['email'] ),
          
        );
      },)
    );
  }
}