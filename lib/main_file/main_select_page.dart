import 'package:flutter/material.dart';
import 'package:untitled/app_bar.dart';
import 'package:untitled/button_page.dart';
import 'package:untitled/card_page.dart';
import 'package:untitled/main_file/navigation_bar.dart';
import 'package:untitled/navigation_rail_page.dart';

class MainSelectPage extends StatefulWidget {
  const MainSelectPage({Key? key}) : super(key: key);

  @override
  State<MainSelectPage> createState() => _MainSelectPageState();
}

class _MainSelectPageState extends State<MainSelectPage> {
  int pageIndex = 0;
  List<Widget> pageList = [
    const AppBarPage(),
    const ButtonPage(),
    const CardPage(),
    const NavigationRailPage(),
    const NavigationBarPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (int currentIndex) {
          setState(() {
            pageIndex = currentIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.app_blocking), label: 'app_bar'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.radio_button_on,
              ),
              label: 'button_page'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'card'),
          BottomNavigationBarItem(
              icon: Icon(Icons.safety_divider), label: 'navigation_rail'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigate_next_sharp), label: 'navigation_bar')
        ],
      ),
    );
  }
}
