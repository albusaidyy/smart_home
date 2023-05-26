import 'package:flutter/material.dart';

import '../home_page_views/home_view.dart';
import '../search_page_views/search_view.dart';
import '../grid_page_views/grid_view.dart';
import '../profile_page_views/profile_view.dart';

class BottomNavigatonBarView extends StatefulWidget {
  const BottomNavigatonBarView({super.key});

  @override
  State<BottomNavigatonBarView> createState() => _BottomNavigatonBarViewState();
}

class _BottomNavigatonBarViewState extends State<BottomNavigatonBarView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    SearchView(),
    GridPageView(),
    ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: SizedBox(
        height: 89,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: const Color(0xFFF8F8F8),
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF211D1D),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/home_icon.png')),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/search_icon.png')),
                label: 'search'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/grid_icon.png')),
                label: 'Grid'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/profile_icon.png')),
                label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFFFFB267),
          onTap: _onItemTapped,
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
