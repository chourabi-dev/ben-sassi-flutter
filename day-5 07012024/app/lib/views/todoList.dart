import 'package:app/views/addTodo.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {

  List<dynamic> _list = [];


  getTodosFromDB()async {
    var db = await openDatabase('my_db.db');
    var result = await db.rawQuery('SELECT * FROM Todos');
    print(result);
    setState(() {
      _list = result;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTodosFromDB();
  }


 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
        return new AddTodoScreen( refreshFN: getTodosFromDB, );
      },));
      }, child: Icon(Icons.add), ),
      body: ListView.builder(itemCount: _list.length, itemBuilder: (context, index) {
        return ListTile(
          title: Text(_list[index]['todo']),
          trailing: IconButton(onPressed: ()async{
            var db = await openDatabase('my_db.db');

            await db
    .rawDelete('DELETE FROM Todos WHERE id = ?', [ _list[index]['id'] ]);

            getTodosFromDB();

          }, icon: Icon(Icons.delete),)
        );
      },),
    );
  }
}