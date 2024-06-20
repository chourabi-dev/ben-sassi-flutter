import 'package:app/views/album_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MusicAlumbs extends StatefulWidget {
  const MusicAlumbs({super.key});

  @override
  State<MusicAlumbs> createState() => _MusicAlumbsState();
}

class _MusicAlumbsState extends State<MusicAlumbs> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Hero(
              tag: "album_cover",
              child: Image.network("https://i.discogs.com/KRPG8mda9mjOMCY2dFCSJa2cNcE1YnO5cNjYViUB0kQ/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIxNjk1/Ni0xMjMxNTg3OTY1/LmpwZWc.jpeg"),
            ),
            title: Text('Music Album 1'),
            subtitle: Text('Artist 1'),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (ctx){
                return new AlbumDetails();
              }));
            },
            ),
          
            
            
        ],
      ),
    );
  }
}