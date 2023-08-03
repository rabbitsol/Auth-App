import 'package:authapp/forgetpass.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<StatefulWidget> createState() => _LogInState();
}

class _LogInState extends State {
  //String name = "";
  String email = "";
  String pass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Welcome Back",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
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
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: "Password"),
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          onFieldSubmitted: (value) {
            setState(() {
              pass = value;
            });
          },
          validator: (value) {
            if (value!.isNotEmpty && value.length < 5) {
              return 'Invalid Password';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const ForgetPass())));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: const Size(double.infinity, 50)),
          child: const Text(
            "LogIn",
            style: TextStyle(color: Colors.white, fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text("Couldn't access an account? Register"),
      ]),
    ));
  }
}
