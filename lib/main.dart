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
      // body: Container(
      //   color: Colors.blue.shade50,
      //   width: double.infinity,
      //   height: double.infinity,
      //   child: Center(
      //     child: Container(
      //       width: 100,
      //       height: 100,
      //       // color: Colors.blueGrey,
      //       decoration: BoxDecoration(
      //         color: Colors.blueGrey,
      //         // borderRadius: BorderRadius.circular(10),
      //         // borderRadius: BorderRadius.only(
      //         //   topLeft: Radius.circular(10),
      //         //   topRight: Radius.circular(10),
      //         // )
      //         border: Border.all(
      //           color: Colors.black,
      //           width: 2,
      //         ),
      //         boxShadow: const [
      //           BoxShadow(
      //             color: Colors.black,
      //             offset: Offset(5, 5),
      //             blurRadius: 51,
      //             spreadRadius: 5,
      //           ),
      //         ],
      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //   ),
      // )
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.blueGrey,
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

}