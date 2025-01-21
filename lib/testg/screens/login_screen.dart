import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hoş Geldin!',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text('Lütfen Bilgilerinizi Giriniz'),
              Text('Kullanıcı Adı / E - Mail'),
              TextField(),
              Text('Şifre'),
              TextField(),
              Row(
                children: [
                  // Checkbox(value: value, onChanged: onChanged),
                  // Text('Beni Hatırla'),
                  // TextButton('Şifremi Unuttum')
                ],
              ),
              ElevatedButton(
                  // Stiller girilecek.
                  onPressed: () {
                    // Doğru Bilgi Girildiğinde Ana Sayfaya Yönlendirecek.
                  },
                  child: Text('Giriş Yap')),
              TextButton(
                  // Stiller girilecek.
                  onPressed: () {
                    // Kayıt Ol Ekranına Yönlendirecek.
                  },
                  child: Text('Hesabın yok mu? Kayıt ol')),
            ],
          ),
        ),
      ),
    );
  }
}
