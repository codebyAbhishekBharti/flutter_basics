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
  var emailText = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jai Shree Ram'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // enabled: false,
                  controller: emailText,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    // suffixText: 'Suffix',
                    hintText: 'Enter Email',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: (){
                        print('Search Icon Clicked');
                      },
                    ),
                    prefixIcon: Icon(Icons.email, color: Colors.red,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),

                  ),
              ),
              Container(height: 11,),
              TextField(
                controller: password,
                obscureText: true,
                obscuringCharacter: '*',
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  prefixIcon: Icon(Icons.lock, color: Colors.red,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),

                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    print('Email: ${emailText.text}');
                    print('Password: ${password.text}');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Login', style: TextStyle(fontSize: 20,color: Colors.red),),
                  )
              ),
            ],
          ),
        ),
      )
      );
  }

}