import 'package:flutter/material.dart';
import 'package:objections/sign_in_page.dart';
import 'package:objections/register_page.dart';
 void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'register_page',
    routes: {'register_page': (context) => SignInPage(title: 'Sign in')},
  ));
}