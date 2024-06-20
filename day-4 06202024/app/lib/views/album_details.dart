import 'package:flutter/material.dart';

class AlbumDetails extends StatefulWidget {
  const AlbumDetails({super.key});

  @override
  State<AlbumDetails> createState() => _AlbumDetailsState();
}

class _AlbumDetailsState extends State<AlbumDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Album Details'),
        ),


        body: Column(
          children: [

            Container(
              child: Hero(
                tag: "album_cover",
                child: Image.network("https://i.discogs.com/KRPG8mda9mjOMCY2dFCSJa2cNcE1YnO5cNjYViUB0kQ/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIxNjk1/Ni0xMjMxNTg3OTY1/LmpwZWc.jpeg"),
              ),
            ),
            Text("TITILE")
          ],
        ),
    
    );
  }
}