import 'package:flutter/material.dart';
import 'package:sample/bottom_nav/Bottom_Navigaion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       bottomNavigationBar: BottomNav(), 
      )
    );
  }
}