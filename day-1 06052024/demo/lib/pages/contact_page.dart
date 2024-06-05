import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {

  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Contact page"),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(onPressed: (){}, icon: Icon( Icons.account_balance_outlined ) )
        ],
      ),

      drawer: Drawer(
        child: Text("bonjour"),
      ),

      // i need list view in the body
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text("chourabi taher"),
            subtitle: Text("chourabitaher@gmail.com"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("chourabi taher"),
            subtitle: Text("chourabitaher@gmail.com"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("chourabi taher"),
            subtitle: Text("chourabitaher@gmail.com"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("chourabi taher"),
            subtitle: Text("chourabitaher@gmail.com"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("chourabi taher"),
            subtitle: Text("chourabitaher@gmail.com"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("chourabi taher"),
            subtitle: Text("chourabitaher@gmail.com"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("chourabi taher"),
            subtitle: Text("chourabitaher@gmail.com"),
          ),
          
          
        ]
      )

      ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.abc_rounded),
      ),
    );
  }
}