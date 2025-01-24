import 'package:flutter/material.dart';
import 'package:ornek_proje/testg/screens/event_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> etkinlikler = [
      {
        'baslik': 'Etkinlik 1 : Kadın Hakları Semineri',
        'tarih': '22/01/2025',
        'aciklama': 'Detaylı bilgi için lütfen açıklamayı okuyun.',
        'yer': 'Uzaktan'
      },
      {
        'baslik': 'Etkinlik 2 : İklim Değişikliği Protestosu',
        'aciklama':
            'Etkinlik hakkında detaylı açıklama. Lütfen dikkatli okuyunuz.',
        'tarih': '23/02/2025',
        'yer': 'İstanbul'
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'İnsan Hakları Platformu',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: etkinlikler.length,
        itemBuilder: (context, index) {
          final etkinlik = etkinlikler[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetailScreen(
                    baslik: etkinlik['baslik']!,
                    tarih: etkinlik['tarih']!,
                    aciklama: etkinlik['aciklama']!,
                    yer: etkinlik['yer']!,
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      etkinlik['baslik']!,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Tarih: ${etkinlik['tarih']}',
                          style: TextStyle(fontSize: 14),
                        ),
                        Spacer(),
                        Text(
                          'Yer: ${etkinlik['yer']}',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      etkinlik['aciklama']!,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
