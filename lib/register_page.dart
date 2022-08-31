import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[456],
      body : SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Hi there!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )
              ),
              Text("Welcome",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              TextFormField(),
              TextFormField(),
            ]
            ),
        ),
      )
    );
  }
}