import 'package:flutter/material.dart';
import 'package:crypto_app/View/Pages/cartPage.dart';
import 'package:crypto_app/View/Pages/profilePage.dart';
import 'package:crypto_app/View/Pages/historyPage.dart';
import 'package:crypto_app/View/Pages/home_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int index = 0;
  static List<Widget> pages = [
    HomePage(),
    CartPage(),
    HistoryPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: pages.elementAt(index),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/3.png',
                height: myHeight * 0.03,
                color: Colors.grey.shade300,
              ),
              label: 'home',
              activeIcon: Image.asset(
                'assets/3.png',
                height: myHeight * 0.03,
                color: Color(0xff7847fc),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/4.png',
                height: myHeight * 0.03,
                color: Colors.grey.shade300,
              ),
              label: 'home',
              activeIcon: Image.asset(
                'assets/4.png',
                height: myHeight * 0.03,
                color: Color(0xff7847fc),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/5.png',
                height: myHeight * 0.03,
                color: Colors.grey.shade300,
              ),
              label: 'home',
              activeIcon: Image.asset(
                'assets/5.png',
                height: myHeight * 0.03,
                color: Color(0xff7847fc),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/6.png',
                height: myHeight * 0.03,
                color: Colors.grey.shade300,
              ),
              label: 'home',
              activeIcon: Image.asset(
                'assets/6.png',
                height: myHeight * 0.03,
                color: Color(0xff7847fc),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
