import 'package:flutter/material.dart';

class AppbarLearn extends StatelessWidget {
  const AppbarLearn({super.key});
  final String _title = 'Deneme';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.menu, color: Colors.white)),
        actionsIconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.message_rounded)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.account_circle_rounded)),
        ],
      ),
    );
  }
}
