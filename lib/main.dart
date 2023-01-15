import 'package:flutter/material.dart';
import 'package:fuel_app/Fuel%20status.dart';
import 'package:fuel_app/arrival_status.dart';


import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: LoginPage(),
    );
  }
}
