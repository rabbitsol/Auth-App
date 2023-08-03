import 'package:authapp/signup.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<StatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends State {
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: SignUp(
        submit: Text("data"),
      )

    );
  }

  
}
