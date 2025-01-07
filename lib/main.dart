// Stateless Widget : Sabit Ekran , Sabit Görünüm
// Uygulama ilk başladığında bir görünüm ister.
import 'package:flutter/material.dart';

void main() {
  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});
/* 
Uygulama çalışır ama görünümü nasıl belirtmek gerekiyor.
   - Android için Material App görünümünü kullanmalıyız. 
*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Nunito"),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Uygulamam',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
              backgroundColor: Colors.green,
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 300,
                      height: 200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 6,
                                spreadRadius: 1),
                          ]),
                      child: Text(
                        'Test App',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ))
                ],
              ),
            )));
  }
}
