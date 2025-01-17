import 'package:flutter/material.dart';

void main() {
  runApp(Anasayfa());
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gıda Kontrol Asistanı',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Colors.green,
          //  scaffoldBackgroundColor: Colors.white,
          /* textTheme: TextTheme(
              bodyMedium: TextStyle(color: Colors.white),
            )*/
        ),
        home: AnaSayfaView());
  }
}

class AnaSayfaView extends StatelessWidget {
  const AnaSayfaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gıda Kontrol Asistanı',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Hoş Geldiniz!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
