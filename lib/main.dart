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
    var arrNames = ['Amit', 'Sumit', 'Rahul', 'Rohit', 'Sachin'];
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            // leading: Text('${index+1}'),
            leading: CircleAvatar(
              child: Image.asset('assets/images/abhishek.jpg'),
            ),
            title: Text(arrNames[index]),
            subtitle: Text('This is Subtitle'),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(height: 1,thickness: 1,);
        },
        itemCount: arrNames.length,
      )
    );
  }

}