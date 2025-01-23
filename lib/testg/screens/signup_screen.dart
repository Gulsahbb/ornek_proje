import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayıt Ol'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                  labelText: 'Ad Soyad',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'E-posta',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Şifre Tekrar',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black),
                onPressed: () {
                  // Kayıt işlemi için bir fonksiyon
                  print('Kayıt İşlemi Başlatıldı!');
                },
                child: Text(
                  'Kayıt Ol',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Center(
                child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Zaten bir hesabınız var mı? Giriş Yap',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
