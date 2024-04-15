import 'package:callaneducation/loginpage.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Men',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/men.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'BOLTAVOYEV ESHMATJON',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const Text(
            "O'quvchi",
            style: TextStyle(fontSize: 12),
          ),
          const SizedBox(
            height: 30,
          ),

          const Text(
            'ID-77887799',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 10,
          ),

          const Text(
            '+998909009999',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),

          const SizedBox(
            height: 200,
          ),
          //CHIQISH
          const Text(
            "profildan chiqish",
            style: TextStyle(fontSize: 12),
          ),

          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
              child: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
