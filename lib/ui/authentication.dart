import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  Authentication({Key? key}) : super(key: key);
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          child: Column(
            children: [
              TextFormField(
                controller: _emailField,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextFormField(
                controller: _passwordField,
                            decoration: InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                obscureText: true,
              ),
              Container(),
              Container(),
            ],
          )),
    );
  }
}
