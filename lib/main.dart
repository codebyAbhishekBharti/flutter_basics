import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/util.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'FontMain',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            fontFamily: 'FontMain',
            fontSize: 11,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  var arrColor = [
    Colors.amber,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.yellow,
    Colors.brown,
    Colors.cyan,
    Colors.indigo,
    Colors.lime,
    Colors.grey,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.teal,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jai Shree Ram'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          width: 250,
          margin: EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(color: arrColor[0]),
              Container(color: arrColor[1]),
              Container(color: arrColor[2]),
              Container(color: arrColor[3]),
              Container(color: arrColor[4]),
              Container(color: arrColor[5]),
              Container(color: arrColor[6]),
              Container(color: arrColor[7]),
              Container(color: arrColor[8]),
            ],
          ),
        ),
      )
    );
  }
}