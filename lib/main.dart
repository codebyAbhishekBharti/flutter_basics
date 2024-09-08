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
      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     child: CircleAvatar(
      //       backgroundImage: AssetImage('assets/images/papa.jpg'),
      //     ),
      //   ),
      // )
        body: Center(
          child: CircleAvatar(
              // backgroundImage: AssetImage('assets/images/papa.jpg'),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 10),
                    child:Image.asset("assets/images/abhishek.jpg"),
                  ),
                  const Text('Amit'),
                ],
              ),
              radius: 100,
            ),
        )
    );
  }

}