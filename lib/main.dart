//import 'package:authapp/forgetpass.dart';
//import 'package:authapp/login.dart';
//import 'package:authapp/controllerdemo.dart';
import 'package:authapp/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SignUp());
    //LogIn());
    //ForgetPass());
    //ControllerDemo());
  }
}
