import 'package:assignment_1/src/coffee/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:simple_floating_bottom_nav_bar/floating_bottom_nav_bar.dart';
import 'package:simple_floating_bottom_nav_bar/floating_item.dart';

class Homescreen extends StatefulWidget {
  route() => MaterialPageRoute(builder: (builder) => const Homescreen());
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // for bottom Navigation bar
  List<FloatingBottomNavItem> bottomNavItems = [
    FloatingBottomNavItem(
      inactiveIcon: const Icon(
        Icons.home_outlined,
        color: Colors.white,
      ),
      activeIcon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: const Color.fromARGB(53, 0, 0, 0),
            borderRadius: BorderRadius.circular(40),
            border:
                Border.all(color: const Color.fromARGB(255, 144, 144, 144))),
        child: const Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
    ),
    FloatingBottomNavItem(
      inactiveIcon: const Icon(
        Icons.person_outline,
        color: Colors.white,
      ),
      activeIcon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: const Color.fromARGB(53, 0, 0, 0),
            borderRadius: BorderRadius.circular(40),
            border:
                Border.all(color: const Color.fromARGB(255, 144, 144, 144))),
        child: const Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
    ),
    FloatingBottomNavItem(
      inactiveIcon: const Icon(
        Icons.wallet_outlined,
        color: Colors.white,
      ),
      activeIcon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: const Color.fromARGB(53, 0, 0, 0),
            borderRadius: BorderRadius.circular(40),
            border:
                Border.all(color: const Color.fromARGB(255, 144, 144, 144))),
        child: const Icon(
          Icons.wallet,
          color: Colors.white,
        ),
      ),
    ),
    FloatingBottomNavItem(
      inactiveIcon: const ImageIcon(
        AssetImage('assets/bag.png'),
        color: Colors.white,
      ),
      activeIcon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: const Color.fromARGB(53, 0, 0, 0),
            borderRadius: BorderRadius.circular(40),
            border:
                Border.all(color: const Color.fromARGB(255, 144, 144, 144))),
        child: const ImageIcon(
          AssetImage('assets/bag.png'),
          color: Colors.white,
        ),
      ),
    ),
    FloatingBottomNavItem(
      inactiveIcon: const Icon(
        Icons.message_outlined,
        color: Colors.white,
      ),
      activeIcon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: const Color.fromARGB(53, 0, 0, 0),
            borderRadius: BorderRadius.circular(40),
            border:
                Border.all(color: const Color.fromARGB(255, 144, 144, 144))),
        child: const Icon(
          Icons.message_outlined,
          color: Colors.white,
        ),
      ),
    ),
  ];

// only one page
  List<Widget> pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return FloatingBottomNavBar(
      pages: pages,
      items: bottomNavItems,
      initialPageIndex: 0,
      backgroundColor: const Color.fromARGB(200, 51, 51, 51),
      bottomPadding: 5,
      elevation: 0,
      radius: 20,
    );
  }
}
