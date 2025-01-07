// Stateless Widget : Sabit Ekran , Sabit Görünüm
// Uygulama ilk başladığında bir görünüm ister.
import 'package:flutter/material.dart';

void main() {
  runApp(Uygulamam());
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
            title: Text(
              'Uygulamam',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
            backgroundColor: Colors.green,
            centerTitle: true,
          ),
          body: Text('Merhaba'),
        ));
  }
}
