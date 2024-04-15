import 'package:callaneducation/constants/mediqury.dart';
import 'package:callaneducation/pagelar/profil.dart';
import 'package:flutter/material.dart';

class Homeqismi extends StatefulWidget {
  const Homeqismi({super.key});

  @override
  State<Homeqismi> createState() => _HomeqismiState();
}

class _HomeqismiState extends State<Homeqismi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profil())),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/men.jpg'),
              ), //Men profil
            ),
          )
        ],
        title: const Text(
          'Callan Education',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: mheight(context) * 0.2,
                child: PageView(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Container(
                      height: mwidth(context) * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/flutter.jpg'))),
                    ),
                    Container(
                      height: mwidth(context) * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/english.jpg'))),
                    ),
                    Container(
                      height: mwidth(context) * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/rasma.jpg'))),
                    ),
                    Container(
                      height: mwidth(context) * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/design.jpg'))),
                    ),
                  ],
                )),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 120,
          //     decoration: const BoxDecoration(color: Colors.blue),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 120,
          //     decoration: const BoxDecoration(color: Colors.red),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 120,
          //     decoration: const BoxDecoration(color: Colors.green),
          //   ),
          // ),
        
        
        ],
      ),
    );
  }
}

class SearchFieled extends StatefulWidget {
  const SearchFieled({super.key});

  @override
  State<SearchFieled> createState() => _SearchFieledState();
}

class _SearchFieledState extends State<SearchFieled> {
  @override
  Widget build(BuildContext context) {
    return const TextField();
  }
}
