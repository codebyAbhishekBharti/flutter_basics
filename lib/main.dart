import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}
class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:   DashBoardScreen(),
      );
  }
}

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
        backgroundColor: Colors.blue,
      ),
      // body: const Padding(
      //   // padding: const EdgeInsets.all(8.0),
      //   padding: EdgeInsets.only(top: 11,left:111),
      //   child: Text("Jai Shree Ram",style: TextStyle(fontSize: 25),),
      // )
      body: Container(
        color: Colors.blueGrey,
        margin: EdgeInsets.all(20),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(11),
            child: Text("Jai Shree Ram",style: TextStyle(fontSize: 25,color: Colors.white),),
          ),
        ),
      )
    );
  }

}