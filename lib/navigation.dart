import 'package:flutter/material.dart';
import 'package:instagram/screen/addpost.dart';
import 'package:instagram/screen/home.dart';
import 'package:instagram/screen/notifications.dart';
import 'package:instagram/screen/profilepage.dart';
import 'package:instagram/screen/searchpage.dart';

class InstagramHomePage extends StatefulWidget {
  @override
  _InstagramHomePageState createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ExplorePage(),
    AddPostPage(),
    NotificationsPage(),
    ProfilPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_rounded),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important_outlined),
            label: 'Notip',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
