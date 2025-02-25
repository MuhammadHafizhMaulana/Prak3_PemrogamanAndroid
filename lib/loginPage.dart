import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  LoginPage({super.key});
  String username =  "";
  String password =  "";

  @override
  Widget build(BuildContext context){
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page"),
        backgroundColor: const Color.fromARGB(255, 135, 99, 196),
      ),
      body: Column(
        children: [
          _usernameField(),
          _passwordField(),
          _loginButton(context)

        ],
      ),
     ),
    );
  }


  Widget _usernameField (){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          username = value;
        },
        decoration: InputDecoration(
          hintText: "Username",
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide : BorderSide(color: Colors.blue)
          )
        ),
      ),
    );
  }

  Widget _passwordField (){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          password = value;
        },
        decoration: InputDecoration(
          hintText: "Password",
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide : BorderSide(color: Colors.blue)
          )
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child:  ElevatedButton(
        onPressed: () {
          String text = "";
          if (username == "flutterMobile" && password == "flutter123"){
            text = "Login Success!";
          } else {
          text ="Login Failed!";
          }
          SnackBar snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Login")),
    );
  }
}