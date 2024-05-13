import 'package:calculator_app/screen/bottom_screen/about_screen.dart';
import 'package:calculator_app/screen/bottom_screen/cart_screen.dart';
import 'package:calculator_app/screen/bottom_screen/home_screen.dart';
import 'package:calculator_app/screen/bottom_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _lstBottomScreen = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const AboutScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
        elevation: 15,
      ),
      body: _lstBottomScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Color.fromARGB(1, 2, 3, 4),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              backgroundColor: Color.fromARGB(1, 2, 3, 4),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Color.fromARGB(1, 2, 3, 4),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              backgroundColor: Color.fromARGB(1, 2, 3, 4),
              label: 'About US'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
