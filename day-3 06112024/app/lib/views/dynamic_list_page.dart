import 'package:flutter/material.dart';

class DynamicListView extends StatefulWidget {
  const DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {

  List<dynamic> _data = [
    { "name":"chourabi taher", "email":"tchourabi@gmail.com" },
    { "name":"chourabi taher", "email":"tchourabi@gmail.com" },
    { "name":"chourabi taher", "email":"tchourabi@gmail.com" },
    { "name":"chourabi taher", "email":"tchourabi@gmail.com" },
    { "name":"chourabi taher", "email":"tchourabi@gmail.com" },
    { "name":"chourabi taher", "email":"tchourabi@gmail.com" },
    
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {


          


           // new array 

           List<dynamic> tmp = _data;

           tmp.add( { "name":"chourabi taher", "email":"tchourabi@gmail.com" });

          setState(() {
            _data = tmp;
          });
           // API  [...]


        },
      ),
      body: ListView.builder( itemCount: _data.length, itemBuilder: (context, index) {
        return ListTile(
          title: Text( _data[index]['name'] ),
          subtitle: Text(_data[index]['email']),
        );
      }, )
    );
  }
}