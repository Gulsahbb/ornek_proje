import 'package:flutter/material.dart';
import 'package:ornek_proje/testg/screens/home_screen.dart';
import 'package:ornek_proje/testg/screens/signup_screen.dart';

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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text('Giriş Yap')),
              TextButton(
                  // Stiller girilecek.
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Text('Hesabın yok mu? Kayıt ol')),
            ],
          ),
        ),
      ),
    );
  }
}
