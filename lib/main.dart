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
                children: [
                  Container(
                      padding: const EdgeInsets.all(80),
                      margin: const EdgeInsets.all(80),
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
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset('assets/images/dinoinspace.jpeg',
                        height: 100),
                  ),
                  SizedBox(
                    height: 80,
                    width: 200,
                    child: Card(
                        color: Colors.green,
                        elevation: 3,
                        child: Align(
                          child: Text(
                            'Merhaba',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                  )
                ],
              ),
            )));
  }
}
