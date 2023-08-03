import 'package:flutter/material.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<StatefulWidget> createState() => _ForgetPassState();
}

class _ForgetPassState extends State {
  //String name = "";
  String email = "";
  // String pass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(children: <Widget>[
        // Container(
        //   alignment: Alignment.centerLeft,
        //   child: const Text(
        //     "Welcome Back",
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        //   ),
        // ),
        Image.asset("img1.png"),
        TextFormField(
          decoration: const InputDecoration(labelText: "Email"),
          keyboardType: TextInputType.emailAddress,
          onFieldSubmitted: (value) {
            setState(() {
              email = value;
            });
          },
          validator: (value) {
            if (value!.isNotEmpty || !value.contains("@")) {
              return 'Invalid Email';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 148,
        ),
        ElevatedButton(
          onPressed: (() {}),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: const Size(double.infinity, 50)),
          child: const Text(
            "SignUp",
            style: TextStyle(color: Colors.white, fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text("Not Received. Resend Code!"),
      ]),
    ));
  }
}
