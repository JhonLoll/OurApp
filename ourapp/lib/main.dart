import 'package:flutter/material.dart';
import 'package:ourapp/pages/signup.dart';

// main function
void main(){
  runApp(OurApp());
}

// our app class - return home page
class OurApp extends StatelessWidget {
  const OurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}