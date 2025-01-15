import 'package:flutter/material.dart';

class StatelessWidgetTest extends StatelessWidget {
  const StatelessWidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white54,
        shadowColor: Colors.blueGrey,
      ),
      appBar: AppBar(
        title: Text(
          'Deneme',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          Icon(
            Icons.star,
            color: Colors.white,
            weight: 20,
          ),
          Icon(
            Icons.star,
            color: Colors.white,
            weight: 20,
          )
        ],
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 280,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                )
              ]),
          child: Column(
            children: [
              Text(
                'Giriş Yap',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text(
                      'Kullanıcı Adı',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    icon: Icon(
                      Icons.login_outlined,
                      color: Colors.white,
                    ),
                    fillColor: Colors.white24,
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.white))),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'Şifre',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  icon: Icon(
                    Icons.password,
                    color: Colors.white,
                  ),
                  fillColor: Colors.white24,
                  filled: true,
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.all_inbox_rounded), label: 'Inbox'),
        ],
      ),
    );
  }
}
