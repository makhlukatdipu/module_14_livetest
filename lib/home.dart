import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Test'),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello world'),
        ],
      ),
    );
  }
}
