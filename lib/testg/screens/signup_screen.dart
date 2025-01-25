import 'package:flutter/material.dart';
import 'package:ornek_proje/testg/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool sartKabulu = false;
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
            Row(
              children: [
                Checkbox(
                  value: sartKabulu,
                  onChanged: (value) {
                    setState(() {
                      sartKabulu = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    "Kayıt olarak kullanım şartlarını kabul etmiş sayılırsınız.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black),
                onPressed: sartKabulu
                    ? () {
                        // Kullanım şartları kabul edildiyse kayıt işlemi yapılabilir
                        print('Kayıt ol işlemi yapılıyor...');
                      }
                    : null,
                child: Text(
                  'Kayıt Ol',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Center(
                child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
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


// TODO BUTONLARA TIKLADIĞIMDA AÇILAN SAYFALARI SİLME İŞLEMİNİ UNUTMA!!!!!
// TODO İlk sayfadaki kayıt ola tıkladın. Sonra hesabın var mı giriş yapa tıkladın geri geldiğinde beni ilk sayfaya yönlendirsin.