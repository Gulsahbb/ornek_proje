import 'package:flutter/material.dart';
import 'package:ornek_proje/testg/screens/forgot_password_screen.dart';
import 'package:ornek_proje/testg/screens/home_screen.dart';
import 'package:ornek_proje/testg/screens/signup_screen.dart';
import 'package:ornek_proje/testg/theme/app_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

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
                "Hoş Geldiniz!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textColor,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 10),
              Text(
                "İnsan hakları platformumuza giriş yapın",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppTheme.softGrayColor,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 40),
              // Kullanıcı Adı TextField
              TextField(
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adı",
                  labelStyle: TextStyle(color: AppTheme.textColor),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon:
                      Icon(Icons.person_outline, color: AppTheme.textColor),
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
                      Icon(Icons.lock_outline, color: AppTheme.textColor),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Beni Hatırla Checkbox
                  Row(
                    children: [
                      Checkbox(
                        activeColor: AppTheme.textColor,
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value ?? false;
                          });
                        },
                      ),
                      Text(
                        "Beni Hatırla",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppTheme.textColor,
                        ),
                      ),
                    ],
                  ),
                  // Şifremi Unuttum Butonu
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle:
                            TextStyle(decoration: TextDecoration.underline)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen()));
                    },
                    child: Text(
                      "Şifremi Unuttum",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppTheme.textColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Giriş Yap Butonu
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                ),
                child: Center(
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Hesabın Yok Mu Butonu
              TextButton(
                style: TextButton.styleFrom(
                    textStyle: TextStyle(decoration: TextDecoration.underline)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                child: Text(
                  "Hesabın Yok Mu? Kayıt Ol ",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppTheme.textColor,
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
