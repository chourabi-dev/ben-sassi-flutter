import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {


  String? _error;

  TextEditingController _todoController = new TextEditingController();


  List<dynamic> _data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo app"),

      ),

      body: Column(
        children: [

            // ELEMENTS
            Container(
              height: MediaQuery.of(context).size.height - 136,
              child: ListView.builder( 
                itemCount: _data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text( _data[index] ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete,color: Colors.red,),
                      onPressed: () {
                        // remove element N° index
                        
                        setState(() {
                          _data.removeAt(index);
                        });
                      }
                    ),
                  );
                },
              )
            ),
            
            Container(
              height: 80,
              child: 
              Row(
                children: [
                  // text edit
                  Container(
                    padding: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width - 80,
                    child: TextField(
                      decoration: InputDecoration(
                        errorText: _error
                      ),
                      controller: _todoController,
                    )
                    
                    
                  ),
                  Container(
                    width: 80,
                    child: IconButton(
                      onPressed: (){
                        String todo = _todoController.text;

                        if( todo == '' ){
                          setState(() {
                            _error = 'Please enter a todo';
                          });
                        }else{
                          setState(() {
                            _error = null;
                          });

                          // insert todo list !!

                          setState(() {
                            _data.add(todo);
                          });

                        }
                        _todoController.text="";
                      },
                      icon: Icon( Icons.send ),
                    ),
                  ),
                  
                ],
              ),
            ),
            


        ],
      ),



    );
  }
}