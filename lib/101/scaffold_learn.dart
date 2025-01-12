import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Samples',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Text('Merhaba', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white60,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
      ]),
    );
  }
}
