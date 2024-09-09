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
  var time = DateTime.now();
  var flag_time=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jai Shree Ram'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${time.hour}:${time.minute}:${time.second}',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // for(int i=0; i<10; i++) {
                  // //   print(i);
                  // //   await Future.delayed(Duration(seconds: 1));
                  //   print("sleep 1 sec");
                  // }
                  for(int i=0;i<100;i++){
                    if(flag_time==false){
                      break;
                    }
                    print(flag_time);
                    print(i);
                    setState(() {
                      time = DateTime.now();
                    });
                    await Future.delayed(Duration(seconds: 1));
                  };
                  // setState(() {
                  //   time = DateTime.now();
                  // });
                },
                child: Text("Current Time"),
              ),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      flag_time = false;
                    });
                    print("Stop time flag ${flag_time}");
                    print("Stopping time");
                  }
                  ,
                  child: Text('Stop Time')
              )
            ],
          ),
        ),
      ),
    );
  }
}