import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Demo11a(),
    );
  }
}

class Demo11a extends StatefulWidget {
  const Demo11a({super.key});

  @override
  State<Demo11a> createState() => _Demo11aState();
}

class _Demo11aState extends State<Demo11a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("Week 11B Demo"),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
    );
  }
}
