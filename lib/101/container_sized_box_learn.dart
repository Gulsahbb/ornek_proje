import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(width: 300, height: 200, child: Text('a' * 500)),
          const SizedBox.shrink(),
          SizedBox.square(dimension: 60, child: Text('b' * 50)),
          Container(
            height: 200,
            constraints: const BoxConstraints(
                maxWidth: 150, minWidth: 100, maxHeight: 100),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            child: Text('a' * 50),
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      color: Colors.teal,
      // shape: BoxShape.circle,
      gradient:
          const LinearGradient(colors: [Colors.grey, Colors.orangeAccent]),
      border: Border.all(width: 5, color: Colors.lightGreenAccent));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            color: Colors.teal,
            // shape: BoxShape.circle,
            gradient: const LinearGradient(
                colors: [Colors.grey, Colors.orangeAccent]),
            border: Border.all(width: 5, color: Colors.lightGreenAccent));
}
