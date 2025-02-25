import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  LoginPages({
    super.key
  });

  @override
  State < LoginPages > createState() => _LoginPagesState();
}

bool isLoginSuccess = true;

class _LoginPagesState extends State < LoginPages > {
  String username = "";

  String password = "";

  @override
  Widget build(BuildContext context) {
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
    ), );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: "Username",
          contentPadding: EdgeInsets.all(8.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: (isLoginSuccess) ? Colors.green : Colors.red)
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: (isLoginSuccess) ? Colors.green : Colors.red)
          )
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          hintText: "Password",
          contentPadding: EdgeInsets.all(8.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: (isLoginSuccess) ? Colors.green : Colors.red)
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: (isLoginSuccess) ? Colors.green : Colors.red)
          )
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: (isLoginSuccess) ? Colors.green : Colors.red
        ),
        onPressed: () {
          String text = "";
          if (username == "flutterMobile" && password == "flutter123") {
            setState(() {
              text = "Login Success!";
              isLoginSuccess = true;
            });

          } else {
            setState(() {
              text = "Login Failed!";
              isLoginSuccess = false;
            });


          }
          SnackBar snackBar = SnackBar(content: Text(text), backgroundColor: (isLoginSuccess) ? Colors.green : Colors.red);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Login")),
    );
  }
}