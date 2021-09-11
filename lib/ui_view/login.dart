import 'package:flutter/material.dart';
import 'package:flutter3_2/ui_view/home.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPage createState()=> _LoginPage();
}

const List<Key> keys=[
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareNetwork"),
  Key("Asset"),
  Key("AssetNetwork")
];

class _LoginPage extends State<LoginPage>{
  String isiEmail;
  String isiPassword;
  @override
  Widget build(BuildContext context) {
    // TODO: Login
    TextEditingController inputEmail = TextEditingController();
    TextEditingController inputPassword = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.blueAccent,
      ) ,
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children:<Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 180.0, bottom: 30.0),
            child: Icon(
              Icons.book, color: Colors.greenAccent, size: 150.0,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 10.0),
            child:Text(
              'ListView login',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextFormField(
              controller: inputEmail,
              decoration: const InputDecoration(
                filled: true,
                hintText: 'Masukan Email',
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white),
                icon: Icon(Icons.email,color: Colors.greenAccent,),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0,left: 20.0, right: 20.0),
            child: TextFormField(
              controller: inputPassword,
              decoration: const InputDecoration(
                filled: true,
                hintText: 'Masukan Password',
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                icon: Icon(Icons.admin_panel_settings_sharp, color: Colors.greenAccent,)
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 70.0, right: 70.0),
            child:MaterialButton(
              onPressed: (){
                isiEmail = inputEmail.text;
                isiPassword = inputPassword.text;

                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home(
                  email: isiEmail, password: isiPassword,
                )));
              },
              color: Colors.greenAccent,
              child:Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }

}

