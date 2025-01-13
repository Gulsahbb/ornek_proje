import 'package:flutter/material.dart';

class StatelessWidgetTest extends StatelessWidget {
  const StatelessWidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white54,
        shadowColor: Colors.deepPurple,
      ),
      appBar: AppBar(
        /* leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white), onPressed: () {}),*/
        title: Text(
          'Deneme',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade200,
        actions: [
          Icon(
            Icons.arrow_forward_rounded,
            color: Colors.white,
            weight: 20,
          )
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: ProjectDecoration.boxDecoration,
          child: Text('Merhaba'),
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple.shade200,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.all_inbox_rounded), label: 'Inbox'),
        ],
      ),
    );
  }
}

class ProjectDecoration {
  static BoxDecoration boxDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withValues(),
        spreadRadius: 1,
        blurRadius: 5,
        offset: Offset(0, 2),
      )
    ],
    borderRadius: BorderRadius.circular(10),
    color: Colors.deepPurple.shade200,
  );
}
