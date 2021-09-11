import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  String email, password;
  Home({this.email, this.password});

  @override
  _Home createState()=> _Home();
}


class _Home extends State<Home>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home'
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children:<Widget>[
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Icon(
                Icons.person, size: 190.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                  ('E-Mail : ${widget.email}'),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
            ),
            Container(
              child: Text(
                ('Pasword : ${widget.password}'),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}