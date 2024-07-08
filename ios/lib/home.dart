import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
class HomeScreen extends StatelessWidget {

   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {},
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/imagess/messi.jpg"),
              radius: 15, // adjust the radius to your liking
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mohamed', style: TextStyle(fontSize: 23, color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),

        actions: [
          IconButton(icon: Icon(Icons.video_call, color: Colors.white,),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.call, color: Colors.white), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
        child: Icon(Icons.mic, size: 35, color: Colors.black,),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          side: BorderSide(color: Colors.white,width: 1)),
         ),

      body: Stack(
        children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imagess/whatsapp.jpg"),
              fit: BoxFit.cover,
            ),
            ),
          ),

            Positioned(
              left: 16.0,
              right: 80.0,
              bottom: 16,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                  style:TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Type a message",
            hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,fontSize: 19),
            filled: false,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.black)
            ),
              contentPadding:EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 20
              ),
            prefixIcon: Icon(
              Icons.tag_faces,
                  color:Colors.white,
            ),
            suffixIcon: Icon(
              Icons.attach_file,
              color:Colors.white,
            )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Positioned(
            top: 16,
            left:16,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border:Border.all(color:Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(

              children:[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/imagess/messi.jpg"),
                ),
                SizedBox(width: 8),
                Text(
                  "      This is my first message...",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,fontSize: 20),

                )

              ]
            ),
            ),

          ),

              Positioned(
              top: 100.0,
    left: 16.0,
    child: Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.white), // Add border
    borderRadius: BorderRadius.circular(30),

    ),
    child: Row(
    children: [
    Text(
    "        This is my second message..",
    style: TextStyle(color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic),
    ),
      SizedBox(width: 30),
      CircleAvatar(
        backgroundImage: AssetImage("assets/imagess/messi.jpg"),
      ),
    ],
    ),
    ),
    ),

  ],
      ),
    );
    }
    }

