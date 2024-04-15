import 'package:flutter/material.dart';

class Habarlar extends StatelessWidget {
  const Habarlar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
        title:  const Text('Yangi habarlar'),
        content:  const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              
              Text("Sizga habar yoq?"),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child:  const Text('Orqaga'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ]);
  }
}
