import 'package:callaneducation/models/category.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Kurslar extends StatelessWidget {
  Kurslar({super.key});
  List<Category> categoryList = [];
  void _getCategory() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teachers' ,style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Teachers',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(),
              SizedBox(
                height: 150,
                child: ListView.separated(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 25,
                        ),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue),
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
