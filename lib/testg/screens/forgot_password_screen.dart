import 'package:flutter/material.dart';

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
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Şifre Sıfırlama',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(
              'Lütfen şifre sıfırlama bağlantısını alabilmek için e-posta adresinizi girin.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-posta',
                border: OutlineInputBorder(),
                hintText: 'E-posta adresinizi girin',
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
                    backgroundColor:
                        _email.isEmpty ? Colors.white : Colors.grey,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.all(20)),
                onPressed: _email.isEmpty
                    ? null
                    : () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                'Şifre Sıfırlama Bağlantısı Gönderildi.')));
                      },
                child: Text('Bağlantı Gönder'))
          ],
        ),
      ),
    );
  }
}
