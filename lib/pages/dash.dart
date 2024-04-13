// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobtal/pages/chats.dart';
import 'package:jobtal/pages/courses.dart';
import 'package:jobtal/pages/home.dart';
import 'package:jobtal/pages/jobs.dart';
import 'package:jobtal/pages/profile.dart';
import 'package:jobtal/style.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  late Widget currentScreen;

  List active = [
    S.colors.primaryColor,
    Colors.grey[400],
    Colors.grey[400],
    Colors.grey[400],
    Colors.grey[400]
  ];
  final List<Widget> screens = [
    const HomePage(),
    const Courses(),
    const Jobs(),
    const Chats(),
    const Profile(),
  ];

  void onChange(int index) {
    setState(() {
      _currentIndex = index;
      for (int i = 0; i < 4; i++) {
        if (i != index) {
          active[i] = Colors.grey[400];
        } else {
          active[i] = S.colors.primaryColor;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: SafeArea(child: screens[_currentIndex]),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Theme.of(context).splashColor, blurRadius: 2)
          ],
        ),
        child: SalomonBottomBar(
          onTap: onChange,
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey[400],
          selectedItemColor: S.colors.primaryColor,
          items: [
            SalomonBottomBarItem(
              selectedColor: S.colors.primaryColor,
              activeIcon: SvgPicture.asset(
                'assets/icons/custom/home_active.svg',
                color: S.colors.primaryColor,
              ),
              icon: SvgPicture.asset(
                'assets/icons/custom/home.svg',
                color: S.colors.primaryColor,
              ),
              title: const Text(
                "Home",
              ),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.blue,
              activeIcon: SvgPicture.asset(
                'assets/icons/custom/book_active.svg',
                color: Colors.blue,
              ),
              icon: SvgPicture.asset(
                'assets/icons/custom/book.svg',
                color: Colors.blue,
              ),
              title: const Text(
                "Courses",
              ),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.deepOrange,
              activeIcon: SvgPicture.asset(
                'assets/icons/custom/bag_active.svg',
                color: Colors.deepOrange,
              ),
              icon: SvgPicture.asset(
                'assets/icons/custom/bag.svg',
                color: Colors.deepOrange,
              ),
              title: const Text(
                "Community",
              ),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.purple,
              activeIcon: SvgPicture.asset(
                'assets/icons/custom/message_active.svg',
                color: Colors.purple,
              ),
              icon: SvgPicture.asset(
                'assets/icons/custom/message.svg',
                color: Colors.purple,
              ),
              title: const Text(
                "Chats",
              ),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.green,
              icon: SvgPicture.asset(
                'assets/icons/custom/user.svg',
                color: Colors.green,
              ),
              title: const Text(
                "Profile",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
