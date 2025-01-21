import 'package:flutter/material.dart';

class EventDetailScreen extends StatelessWidget {
  final String baslik;
  final String tarih;
  final String aciklama;
  const EventDetailScreen(
      {super.key,
      required this.baslik,
      required this.tarih,
      required this.aciklama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(baslik),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(baslik,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('Tarih : $tarih',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(
              'Etkinlik Detayları : $aciklama',
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
