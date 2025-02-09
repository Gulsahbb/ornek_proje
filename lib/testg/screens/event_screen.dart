import 'package:flutter/material.dart';
import 'package:ornek_proje/testg/screens/event_detail_screen.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

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
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: etkinlikler.length,
            itemBuilder: (context, index) {
              final etkinlik = etkinlikler[index];
              /*    return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventDetailScreen(
                        baslik: etkinlik['baslik']!,
                        tarih: etkinlik['tarih']!,
                        aciklama: etkinlik['aciklama']!,
                        yer: etkinlik['yer']!),
                  ),
                );
              },
              leading: Icon(Icons.event),
              title: Text(etkinlik['baslik']!),
              subtitle: Text('Tarih : ${etkinlik['tarih']!}'),
            );*/
              return Card(
                margin: EdgeInsets.all(8),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventDetailScreen(
                            baslik: etkinlik['baslik']!,
                            tarih: etkinlik['tarih']!,
                            aciklama: etkinlik['aciklama']!,
                            yer: etkinlik['yer']!),
                      ),
                    );
                  },
                  hoverColor: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(etkinlik['baslik']!),
                        Row(children: [
                          Icon(Icons.calendar_today),
                          SizedBox(width: 5),
                          Text(etkinlik['tarih']!),
                          Spacer(),
                          Icon(Icons.location_on),
                          SizedBox(width: 5),
                          Text(etkinlik['yer']!)
                        ]),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
