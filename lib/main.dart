import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/util.dart';

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
        backgroundColor: Colors.orange,
      ),
      body:  Column(
        children: [
          Text("Jai Shree Ram",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.redAccent),),
          Text("Jai Shree Ram",
            style: Theme.of(context).textTheme.displayMedium,),
          Text("Jai Shree Ram",
            style: Theme.of(context).textTheme.displayLarge,),
          Text("Jai Shree Ram",
            style: mTextStyle11(),
          ),
        ]
      ),
    );
  }

}