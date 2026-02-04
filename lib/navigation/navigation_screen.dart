import 'package:cafe/screens/homescreen.dart';
import 'package:flutter/material.dart';

class Navigationscreen extends StatefulWidget {
  const Navigationscreen({super.key});

  @override
  State<Navigationscreen> createState() => _NavigationscreenState();
}

class _NavigationscreenState extends State<Navigationscreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Homescreen(),
    Homescreen(),
    Homescreen(),
    Homescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffC67C4E),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: _currentIndex,

          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Favourites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "Shopping",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: "Notifications",
            ),
          ],
        ),
      ),
    );
  }
}
