import 'package:flutter/material.dart';
import 'package:ornek_proje/testg/screens/login_screen.dart';
import 'package:ornek_proje/testg/screens/signup_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('İnsan Hakları Platformu veya varsa LOGO'),
              Text('Burada bir metin olsun'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Text('Kayıt Ol')),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text('Veya Giriş Yap'))
            ],
          ),
        ),
      ),
    );
  }
}

/*  final screenSize = MediaQuery.of(context).size;
 Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          image: DecorationImage(
              /*   colorFilter: ColorFilter.mode(
                  Colors.black.withValues(
                    colorSpace: ColorSpace.sRGB,
                  ),
                  BlendMode.dstATop),*/
              image: NetworkImage(
                  'https://plus.unsplash.com/premium_vector-1728823267725-f73df7ba9e7b?q=80&w=1335&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'İnsan Hakları Platformu',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text('Burada bir metin olsun'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupScreen()));
              },
              child: Text('Kayıt Ol')),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text('Veya Giriş Yap'))
        ],
      ),
    )
 */
