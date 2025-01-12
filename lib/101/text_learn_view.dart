import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});
  final String name = 'Gulsah';
  final String name2 = 'Ayse';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome $name',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.pinkAccent,
                  wordSpacing: 2,
                  letterSpacing: 4,
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          Text('Hello $name2',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle)
        ],
      )),
    );
  }
}

// Project Text Styles
class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      decoration: TextDecoration.underline,
      color: const Color.fromARGB(255, 201, 108, 139),
      wordSpacing: 2,
      letterSpacing: 4,
      fontStyle: FontStyle.italic,
      fontSize: 16,
      fontWeight: FontWeight.bold);
}
