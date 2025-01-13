import 'package:flutter/material.dart';
import 'package:ornek_proje/101A/stateless_widget_test.dart';

// import 'package:ornek_proje/101/container_sized_box_learn.dart';
// import 'package:ornek_proje/101/scaffold_learn.dart';
// import 'package:ornek_proje/101/text_learn_view.dart';

void main() {
  runApp(const OrnekProject());
}

class OrnekProject extends StatelessWidget {
  const OrnekProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: StatelessWidgetTest());
  }
}
