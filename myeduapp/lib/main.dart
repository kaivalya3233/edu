import 'package:flutter/material.dart';
import 'package:myeduapp/pagedes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(
          children: [
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    height: 40,
                      width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white54),
                      child: Icon(Icons.home),),
                  SizedBox(
                    width: 10,
                  ),

                  Expanded(
                    child: Container(width: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white54),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Search a Course"
                        ),
                        keyboardType: TextInputType.multiline,

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  Container(
                    height: 40,
                      width: 40,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white54),
                      child: Icon(Icons.notifications),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white54),
                      child: Image(image: AssetImage("assets/images/avatar.png")))
                ],
              ),
            ),
            SizedBox(
              height:20,
            ),
            Container(
                child: Text("Recent Cources",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),
            SizedBox(
              height: 0,
            ),
            Container(
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Column(

                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(

                      children: [
                        
                        GestureDetector(
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>pagedes()));
                          },
                          child: Container(
                            margin:EdgeInsets.only(left: 72),

                            decoration: BoxDecoration(
                              color: Colors.cyan,
                                boxShadow:[BoxShadow( color:Colors.white30,offset: Offset(3,10),blurRadius: 10,
                                spreadRadius: 4),],borderRadius: BorderRadius.circular(15),gradient: LinearGradient(colors:[Colors.cyan,Colors.red],begin: Alignment.topLeft,end: Alignment.bottomRight,stops: [0.2,0.9] )                        ),
                            height: 220,
                            width: 220,
                              child: Column(
                                children: [

                                  Container(
                                  alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(left: 20),
                                      height: 10,
                                      child: Text("12 sections",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black45,fontFamily: "SFProText2",),)),
                                  Text("Flutter for Designers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white,fontFamily: "SFProText"),),

                                  Container(child:SingleChildScrollView(child:Image(image: AssetImage("assets/illustrations/illustration-01.png"))) ),


                                ],
                              ),
                          ),
                        ),
                        
                        
                        Column(
                          children: [

                            Container(
                              margin:EdgeInsets.only(left: 72),
                              decoration: BoxDecoration(
                                  color: Colors.white38,
                                  boxShadow:[BoxShadow( color:Colors.white30,offset: Offset(3,10),blurRadius: 10,
                                      spreadRadius: 4),],borderRadius: BorderRadius.circular(15),gradient: LinearGradient(colors:[Colors.pinkAccent,Colors.greenAccent],begin: Alignment.topLeft,end: Alignment.bottomRight,stops: [0.2,0.9] )),
                              height: 220,
                              width: 220,
                               child: Column(
                                 children: [Container(alignment: Alignment.topLeft,
                                     margin: EdgeInsets.only(left: 20),
                                     height: 10,
                                     child: Text("10 sections",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white,fontFamily: "SFProText2",),)),
                                   Container(margin: EdgeInsets.only(left: 20),
                                       child: Text("Prototyping with ProtoPie",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white,fontFamily: "SFProText"),)),
                                   Container(
                                     child: Image(image: AssetImage("assets/illustrations/illustration-02.png"),
                                     ),
                                   ),
                                 ],
                               ),
                            ),
                          ],
                        ),


                        Column(
                          children: [

                            Container(
                              margin:EdgeInsets.only(left: 72),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  boxShadow:[BoxShadow( color:Colors.white30,offset: Offset(3,10),blurRadius: 10,
                                      spreadRadius: 4),],borderRadius: BorderRadius.circular(15),gradient: LinearGradient(colors:[Colors.redAccent,Colors.black45],begin: Alignment.topLeft,end: Alignment.bottomRight,stops: [0.2,0.9] )                        ),
                              height: 220,
                              width: 220,
                              child: Column(
                                children: [Container(alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(left: 20,top:5),
                                    height: 10,
                                    child: Text("22 sections",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white,fontFamily: "SFProText2",),)),
                                  Container(margin: EdgeInsets.only(left: 20),
                                      child: Text("Build an app with SwiftUI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white,fontFamily: "SFProText"),)),
                                  Image(image: AssetImage("assets/illustrations/illustration-03.png"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 500,
                        )
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 500),

                        child:
                      Text(
                        "Upcomming courses",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white,fontFamily: "SFProText"),
                      )




                    )
                  ],
                ),
              ),

            )
          ],
        ),
        

      ),
    );
      
  }
}
