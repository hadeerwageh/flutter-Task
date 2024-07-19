import 'package:flutter/material.dart';
import 'package:flutter_project/Feed.dart';
import 'package:flutter_project/Sign_up.dart';
import 'package:flutter_project/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: feed(),
      routes: {
                '/login': (context) => login(),

        '/SingUp': (context) => SignUp(),
        '/feed': (context) => feed(),
      },
    );
  }
}
