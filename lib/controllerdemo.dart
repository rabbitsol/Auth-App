import 'package:flutter/material.dart';

class ControllerDemo extends StatefulWidget {
  const ControllerDemo({super.key});
  @override
  State<ControllerDemo> createState() => _ControllerDemoState();
}

class _ControllerDemoState extends State<ControllerDemo> {

  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    Text('Second text field: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                Text('First text field: $text');
              },
            ),
            TextField(
              controller: myController,
            ),
          ],
        ),
      ),
    );
  }
}