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
        title: Text('İnsan Hakları Etkinlikleri'),
      ), //Text(' İnsan Hakları Platformuna Hoşgeldin!')
      body: ListView.builder(
          itemCount: etkinlikler.length,
          itemBuilder: (context, index) {
            final etkinlik = etkinlikler[index];
            return ListTile(
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
            );
          }),
      // Elle veri girdiğimde
      /*   ListView(
        children: [
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Etkinlik 1 : Kadın Hakları Semineri'),
            subtitle: Text('Tarih : 22/01/2025'),
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Etkinlik 2 : İklim Değişikliği Protestosu'),
            subtitle: Text('Tarih : 23/02/2025'),
          ),
        ],
      ),*/
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ]),
    );
  }
}
