import 'package:authapp/dashboard.dart';
//import 'package:authapp/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key, required this.submit});
  final String submit;
  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State {
  final _controller = TextEditingController();

  String txt = "";

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _setText() {
    setState(() {
      txt = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(children: <Widget>[
        const SizedBox(
          height: 110,
          child: Image(image: AssetImage("img1.png")),
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: "Name"),
          controller: _controller,
          keyboardType: TextInputType.name,
          onFieldSubmitted: (value) {
            setState(() {
              //            name = value;
            });
          },
          validator: (value) {
            if (value!.isNotEmpty || value.contains("@")) {
              return 'Invalid Input';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 30,
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: "Email"),
          controller: _controller,
          keyboardType: TextInputType.emailAddress,
          onFieldSubmitted: (value) {
            setState(() {
//              email = value;
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
          height: 30,
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: "Password"),
          controller: _controller,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          onFieldSubmitted: (value) {
            setState(() {
//              pass = value;
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
          height: 30,
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: "Confirm Password"),
          controller: _controller,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          onFieldSubmitted: (value) {
            setState(() {
              //            pass = value;
            });
          },
          validator: (value) {
            if (value!.isNotEmpty && value.length < 5) {
              return 'Password do not match';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            _setText();
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const Dashboard())));
          },
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
        const Text.rich(TextSpan(children: [
          TextSpan(text: "I'm an old user,"),
          TextSpan(
              text: "Log In", style: TextStyle(fontWeight: FontWeight.bold)),
        ]))
        //const Text("Couldn't access an account? Register"),
      ]),
    ));
  }
}
