import 'package:flutter/material.dart';
import 'package:ornek_proje/testg/theme/app_theme.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.accentColor,
        toolbarHeight: 100,
      ),
      backgroundColor: AppTheme.backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Şifre Sıfırlama',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppTheme.textColor,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lütfen şifre sıfırlama bağlantısını alabilmek için e-posta adresinizi girin.',
              style: TextStyle(
                fontSize: 16,
                color: AppTheme.softGrayColor,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-posta',
                hintText: 'E-posta adresinizi girin',
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
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            SizedBox(height: 30),
            // Bağlantı GÖnder Butonu
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _email.isEmpty
                      ? AppTheme.textColor
                      : AppTheme.softGrayColor,
                  foregroundColor: AppTheme.backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                ),
                onPressed: _email.isEmpty
                    ? null
                    : () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                'Şifre Sıfırlama Bağlantısı Gönderildi.')));
                      },
                child: Text(
                  'Bağlantı Gönder',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
