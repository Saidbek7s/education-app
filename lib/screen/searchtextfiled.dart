import 'package:flutter/material.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollNotificationObserver(
      child: TextFormField( 
        decoration: const InputDecoration(prefixIcon: Icon(Icons.search, 
        size: 26,
        color: Colors.grey,),
         
        ),
      ),
    );
  }
}