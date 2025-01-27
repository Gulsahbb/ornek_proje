import 'package:flutter/material.dart';
import 'package:ornek_proje/testg/screens/event_detail_screen.dart';
import 'package:ornek_proje/testg/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    var _selectedIndex;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('İnsan Hakları Platformu',
              style: TextStyle(
                  fontSize: 16,
                  color: AppTheme.backgroundColor,
                  fontFamily: 'Montserrat')),
          elevation: 0,
          backgroundColor: AppTheme.accentColor,
          toolbarHeight: 40,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: AppTheme.accentColor),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: AppTheme.softGrayColor, fontSize: 16),
                ),
              ),
              ListTile(
                title: Text("Ana Sayfa"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Profil"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
        bottomNavigationBar: Container(
          height: 50,
          child: BottomNavigationBar(
              iconSize: 16,
              currentIndex: _selectedIndex,
              selectedItemColor: AppTheme.softGrayColor, // Aktif öğe rengi
              unselectedItemColor: AppTheme.textColor, // Pasif öğe rengi
              backgroundColor: Colors.white, // Arka plan beyaz
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: 'Anasayfa'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore), label: 'Keşfet'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.rss_feed), label: 'Akış'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), label: 'Bildirimler'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle), label: 'Profil')
              ],
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              }),
        ));
  }
}
