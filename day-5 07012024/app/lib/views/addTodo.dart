import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class AddTodoScreen extends StatefulWidget {
  final dynamic refreshFN;

  const AddTodoScreen({super.key, this.refreshFN});

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {

  TextEditingController _todoController = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create new Todo"),
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                maxLines: 5,
                controller: _todoController,
                decoration: InputDecoration(
                  
                )
              ),
              ),

              SizedBox(height: 25,),

              TextButton(onPressed: ()async{

                var db = await openDatabase('my_db.db');

                String todo = _todoController.text;

                print(todo);
                if(todo != ''){

                    // create table if not exists
                    await db.execute(
      'CREATE TABLE IF NOT EXISTS todos (id INTEGER PRIMARY KEY, todo TEXT)');



                  await db.transaction((txn) async {
                  int id1 = await txn.rawInsert(
                      'INSERT INTO todos(todo) VALUES("'+todo+'")');
                  print('inserted1: $id1');

                  // refrech home page !!
                  widget.refreshFN();
                  Navigator.pop(context); // retour
                  db.close();
                  });
                }

              }, child: Text("Create Todo"))
            ]
          )
        ),
      ),
    );
  }
}