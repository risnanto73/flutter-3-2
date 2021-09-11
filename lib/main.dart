import 'package:flutter/material.dart';
import 'package:flutter3_2/ui_view/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: Home
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        alignment: Alignment.center,
        child: Column(
          children:<Widget>[
            Container(
              margin: EdgeInsets.only(top: 250.0),
              child: Icon(Icons.person, color: Colors.greenAccent, size: 150.0,),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0,),
              child: Text(
                'Welcome to My Apps', style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                },
                color: Colors.greenAccent,
                child: Text(
                    'Login', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}
