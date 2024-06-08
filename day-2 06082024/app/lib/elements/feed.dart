import 'package:flutter/material.dart';

class FeedBloc extends StatefulWidget {
  final String title;
  final String photoURL; 
  final String content;
  final int likes; 
  
   
  const FeedBloc({super.key, required this.title, required this.photoURL, required this.content, required this.likes});

  @override
  State<FeedBloc> createState() => _FeedBlocState();
}

class _FeedBlocState extends State<FeedBloc> {

  int _likes = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _likes = widget.likes;
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( left: 15, right: 15, top: 25),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(widget.photoURL),
              ),
              SizedBox(height: 15,),
              Container(
                child: Text(widget.title,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
              ),
              SizedBox(height: 15,),
              Container(
                child: Text(widget.content,style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey.shade500),)
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: (){  
                    setState(() {
                      _likes = _likes + 1;
                    });
                  }, child: Text(" $_likes Likes")),
                  TextButton(onPressed: (){  }, child: Text(" Comments")),
                  TextButton(onPressed: (){  }, child: Text("Share")),
                  
                ],
              )

              
            ],
          )
        ),
      ),
    );
  }
}