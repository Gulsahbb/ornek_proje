import 'package:flutter/material.dart';

class StatelessWidgetTest extends StatefulWidget {
  const StatelessWidgetTest({super.key});

  @override
  State<StatelessWidgetTest> createState() => _StatelessWidgetTestState();
}

class _StatelessWidgetTestState extends State<StatelessWidgetTest> {
  bool _dogruMu = false;
  bool _obscureText = true;
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
          width: 450,
          height: 390,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: _obscureText,
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
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      )),
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
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.white,
                        checkColor: Colors.blueGrey,
                        value: _dogruMu,
                        onChanged: (val) {
                          setState(() {
                            _dogruMu = val!;
                          });
                        }),
                    Text('Beni Hatırla', style: TextStyle(color: Colors.white)),
                    Spacer(),
                    TextButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text(
                          'Şifremi Unuttum',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
              FilledButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                        return Colors.white;
                      }),
                      minimumSize: WidgetStatePropertyAll<Size>(Size(150, 50))),
                  onPressed: () {
                    // Tıklanıldığında başka sayfaya yönlendirecek.
                  },
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(color: Colors.blueGrey),
                  )),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Hesabın Yok Mu? Kayıt Ol',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              fontStyle: FontStyle.italic),
                        )),
                  ],
                ),
              )
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

// Temayı kullanarak style değişiklikleri yap.
// Deneme
class TextFieldDecoration extends InputDecoration {
  TextFieldDecoration()
      : super(
          fillColor: Colors.white24,
          filled: true,
          enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.white)),
        );
}
