import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Container'),
      ),
      // body:Center(
      //   child: Container(
      //     width: 200,
      //     height: 100,
      //     color: Colors.blue,
      //     child: Center(
      //       child: Text("Jai Shree Ram",style: TextStyle(
      //           fontSize: 20,
      //           color: Colors.pink,
      //         fontWeight: FontWeight.w800,
      //         backgroundColor: Colors.black
      //       )
      //       ),
      //     )
      //   ),
      // ),
      // body: TextButton(
      //   child: Text('Click Me'),
      //   onPressed: () {
      //     print('Button Clicked');
      //   },
      //   onLongPress: (){
      //     print("Button Long Pressed");
      //   },
      // )
      // body: ElevatedButton(
      //   child: Text('Click Me'),
      //   onPressed: () {
      //     print('Button Clicked');
      //   },
      // )
      // body: OutlinedButton(
      //   child: Text('Click Me'),
      //   onPressed: () {
      //     print('Button Clicked');
      //   },
      //   style: OutlinedButton.styleFrom(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.zero, // Makes the corners rectangular
      //     ),
      //   )
      // ),
      // body: Center(
      //     child: Container(
      //         width:200,
      //         height:200,
      //         child: Image.asset('assets/images/papa.jpg')
      //     )
      // ),
      body: Container(
        // height: 300,
        // width: 300,
        color: Colors.pink,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('C1', style: TextStyle(fontSize: 20),),
                    Text('C2', style: TextStyle(fontSize: 20),),
                    Text('C3', style: TextStyle(fontSize: 20),),
                    Text('C4', style: TextStyle(fontSize: 20),),
                    Text('C5', style: TextStyle(fontSize: 20),)
                  ],
                ),
                Text('R1', style: TextStyle(fontSize: 20),),
                Text('R2', style: TextStyle(fontSize: 20),),
                Text('R3', style: TextStyle(fontSize: 20),),
                Text('R4', style: TextStyle(fontSize: 20),),
                Text('R5', style: TextStyle(fontSize: 20),),
              ],
            ),
            const Text('A', style: TextStyle(fontSize: 20),),
            const Text('B', style: TextStyle(fontSize: 20),),
            const Text('C', style: TextStyle(fontSize: 20),),
            const Text('D', style: TextStyle(fontSize: 20),),
            const Text('E', style: TextStyle(fontSize: 20),),
            ElevatedButton(child:const Text("Click me Bro"),onPressed: (){print("Button is pressed");},)
          ],
        ),
      ),
    );
  }
}
