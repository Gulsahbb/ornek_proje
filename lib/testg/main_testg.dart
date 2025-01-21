import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test G Demo',
      debugShowCheckedModeBanner: false,
      home: Deneme(),
    );
  }
}

class Deneme extends StatelessWidget {
  const Deneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('TEST', style: TextStyle(color: Colors.white)),
      ),
      body: SizedBox(
        width: 300,
        height: 300,
        child: Text('Deneme Sayfası'),
      ),
    );
  }
}
