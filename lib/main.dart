import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:ornek_proje/101/appbar_learn.dart';
// import 'package:ornek_proje/101/icon_learn.dart';
import 'package:ornek_proje/101A/stateless_widget_test.dart';
// import 'package:ornek_proje/101/button_learn.dart';
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
/*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
            appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        )),
        home: IconLearn());
  }
}*/
