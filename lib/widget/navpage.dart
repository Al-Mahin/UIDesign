import 'package:devstream/screens/page1.dart';
import 'package:devstream/screens/page2.dart';
import 'package:devstream/screens/page3.dart';
import 'package:devstream/screens/page4.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  List<Widget> pages = [
    const Page1(),
    const HomePage(),
    const Page3(),
    const AppMenu()
  ];
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedFontSize: 20,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.red,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        selectedLabelStyle: const TextStyle(
          color: Colors.red,
          fontSize: 20,
        ),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('dev/home.png'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('dev/file.png'),
            label: "search",
          ),
          BottomNavigationBarItem(
              icon: Image.asset('dev/bookmark.png'), label: "Profile"),
          BottomNavigationBarItem(
              icon: Image.asset('dev/marks.png'), label: "Settings"),
        ],
      ),
    );
  }
}
