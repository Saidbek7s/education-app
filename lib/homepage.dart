import 'package:callaneducation/constants/colors.dart';
import 'package:callaneducation/pagelar/homeqismi.dart';
import 'package:callaneducation/pagelar/kurslar.dart';
import 'package:callaneducation/pagelar/saqlanganlar.dart';
import 'package:callaneducation/pagelar/setting.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _selectedIndex=0;
  final List<Widget>_widgetlar=[ 
   const Homeqismi(),
    Kurslar(),
    const Saqlanganlar(), 
     const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:_widgetlar.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          backgroundColor: Colors.white,
          elevation: 0,
          items:  const [
            BottomNavigationBarItem(
              icon:  Icon(Icons.home_filled),
              // activeIcon: Image.asset(
              //   icFeatured,
              //   height: kBottomNavigationBarItemSize,
              // ),
              // icon: Image.asset(
              //   icFeaturedOutlined,
              //   height: kBottomNavigationBarItemSize,
              // ),
              label: "Home",
            ),
            BottomNavigationBarItem(
             icon: Icon(Icons.my_library_add),
              label: "Teachers",
            ),
            BottomNavigationBarItem(
             icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon:  Icon(Icons.settings),
              // activeIcon: Image.asset(
              //   icSetting,
              //   height: kBottomNavigationBarItemSize,
              // ),
              // icon: Image.asset(
              //   icSettingOutlined,
              //   height: kBottomNavigationBarItemSize,
              // ),
              label: "Settings",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
