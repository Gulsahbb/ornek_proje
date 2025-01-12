import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key});
  final String name = 'Gulsah';
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(keys.welcome,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: ProjectColors.welcomeColor,
                  wordSpacing: 2,
                  letterSpacing: 4,
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          Text('Hello $name',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: ProjectColors.welcomeColor))
          // En doğru yöntem tema üzerinden stilleri yazmak.
        ],
      )),
    );
  }
}

// Project Text Styles
class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      decoration: TextDecoration.underline,
      color: ProjectColors.welcomeColor,
      wordSpacing: 2,
      letterSpacing: 4,
      fontStyle: FontStyle.italic,
      fontSize: 16,
      fontWeight: FontWeight.bold);
}

// Project Color
class ProjectColors {
  static Color welcomeColor = Colors.orangeAccent;
}

class ProjectKeys {
  final String welcome = 'Hello. This is A New Flutter Test Project';
}
