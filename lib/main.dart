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
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        /*      body: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrmdIv9U6Vp4y89bmbMn6qxhGP9B_rS82OWw&s",
            width: 200,
            fit: BoxFit.fill,
          ),*/
        /*  body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Merhaba'),
              Image.asset('assets/images/dino.jpg'),
              Image.asset('assets/images/dinoinspace.jpeg'),
            ],
          ),
        ),*/
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => print('ElevatedButton a Tıkladın!'),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text('Bana Tıkla',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ))),
              TextButton(
                  onPressed: () => print('TextButton a Tıkladın!'),
                  child: Text('Bana Tıkla',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
