import 'package:flutter/material.dart';
import 'package:myeduapp/Course_Video.dart';

class pagedes extends StatefulWidget {
  const pagedes({Key? key}) : super(key: key);

  @override
  State<pagedes> createState() => _pagedesState();
}

class _pagedesState extends State<pagedes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange[700],
            title: Text(
              "About Course",
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.white38),
            )),
        backgroundColor: Colors.teal[300],
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(3, 3),
                                blurRadius: 10,
                                spreadRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              colors: [Colors.teal, Colors.red],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [0.2, 0.9]),
                        ),
                        child: Container(
                            child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                  "assets/illustrations/illustration-01.png"),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Course_Video()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 180),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white70),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.red,
                                    size: 40,
                                    shadows: [

                                      BoxShadow(color: Colors.black,spreadRadius: (8),blurRadius: 5)
                                    ],
                                  )),
                            )
                          ],
                        )),
                        height: 330,
                        width: 340,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.people,
                          shadows: [Shadow(color: Colors.red)],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
