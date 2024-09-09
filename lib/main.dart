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
      body: Center(
        child: Text("Jai Shree Ram",
            style: TextStyle(
              fontFamily: 'FontMain',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
      ),
    );
  }

}