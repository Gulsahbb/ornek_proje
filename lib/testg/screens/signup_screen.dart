import 'package:flutter/material.dart';
import 'package:ornek_proje/testg/screens/login_screen.dart';
import 'package:ornek_proje/testg/theme/app_theme.dart';

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
        elevation: 0,
        backgroundColor: AppTheme.accentColor,
        toolbarHeight: 100, // AppBar yüksekliği
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            children: [
              // Başlık
              Text(
                "Kayıt Ol",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textColor,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Hesabınızı oluşturun ve platformumuza katılın",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppTheme.softGrayColor,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 40),
              // Ad Soyad TextField
              TextField(
                decoration: InputDecoration(
                  labelText: "Ad Soyad",
                  labelStyle: TextStyle(color: AppTheme.textColor),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon:
                      Icon(Icons.person_outline, color: AppTheme.softGrayColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.softGrayColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.softGrayColor,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.textColor,
                      width: 1.8,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // E-mail TextField
              TextField(
                decoration: InputDecoration(
                  labelText: "E-posta",
                  labelStyle: TextStyle(color: AppTheme.textColor),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon:
                      Icon(Icons.email_outlined, color: AppTheme.softGrayColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.softGrayColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.softGrayColor,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.textColor,
                      width: 1.8,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Şifre TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Şifre",
                  labelStyle: TextStyle(color: AppTheme.textColor),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon:
                      Icon(Icons.lock_outline, color: AppTheme.softGrayColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.softGrayColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.softGrayColor,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.textColor,
                      width: 1.8,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Şifre Onay TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Şifre Onay",
                  labelStyle: TextStyle(color: AppTheme.textColor),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.lock_reset_outlined,
                      color: AppTheme.softGrayColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.softGrayColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.softGrayColor,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppTheme.textColor,
                      width: 1.8,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Kayıt Ol Butonu
              ElevatedButton(
                onPressed: () {
                  // Kayıt olma işlemi
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                child: Center(
                  child: Text(
                    "Kayıt Ol",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Giriş Yap Linki
              TextButton(
                style: TextButton.styleFrom(
                    textStyle: TextStyle(decoration: TextDecoration.underline)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  "Zaten bir hesabınız var mı? Giriş Yap",
                  style: TextStyle(
                    color: AppTheme.softGrayColor,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}


// TODO BUTONLARA TIKLADIĞIMDA AÇILAN SAYFALARI SİLME İŞLEMİNİ UNUTMA!!!!!
// TODO İlk sayfadaki kayıt ola tıkladın. Sonra hesabın var mı giriş yapa tıkladın geri geldiğinde beni ilk sayfaya yönlendirsin.