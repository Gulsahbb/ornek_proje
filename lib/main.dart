import 'package:flutter/material.dart';
import 'package:ornek_proje/101/container_sized_box_learn.dart';

void main() {
  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: ContainerSizedBoxLearn());
  }
}
