import 'package:flutter/material.dart';
import 'package:ornek_proje/testg/models/participation_model.dart';

class EventDetailScreen extends StatelessWidget {
  final String baslik;
  final String tarih;
  final String aciklama;
  final String yer;
  const EventDetailScreen(
      {super.key,
      required this.baslik,
      required this.tarih,
      required this.aciklama,
      required this.yer});

  @override
  Widget build(BuildContext context) {
    List<Participation> katilimListesi = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(baslik),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(baslik,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Tarih : $tarih',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Spacer(),
                Text('Etkinlik Yeri : $yer',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Etkinlik Detayları : $aciklama',
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal),
            ),
            //SizedBox(height: 20),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  katilimListesi.add(Participation(
                      etkinlikBasligi: baslik, etkinlikTarihi: tarih));
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Etkinliğe Katıldın!'),
                            content: Text(
                                'Etkinliğe katılım isteği başarıyla tamamlandı.'),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Tamam'))
                            ],
                          ));
                },
                child: Text('Katıl'))
          ],
        ),
      ),
    );
  }
}
