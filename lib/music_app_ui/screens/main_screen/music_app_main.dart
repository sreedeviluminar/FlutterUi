import 'package:assignment_ui/music_app_ui/res/data_list.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class MusicAppMianScreen extends StatefulWidget {
  static String id = 'Music_AppHome_Screen';

  @override
  State<MusicAppMianScreen> createState() => _MusicAppMianScreenState();
}

class _MusicAppMianScreenState extends State<MusicAppMianScreen> {
  late PageController _pageController;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Musify.'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Color(0xfff5b5c5),
            fontWeight: FontWeight.bold,
            fontSize: 30),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: listOfWidget,
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        activeColor: const Color(0xfff5b5c5),
        inactiveColor: Colors.white,
        backgroundColor: Colors.black,
        onButtonPressed: onButtonPressed,
        iconSize: 30,
        // activeColor: const Color(0xFF01579B),
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.search_rounded,
            title: 'Search',
          ),
          BarItem(
            icon: Icons.bookmark,
            title: 'Playlists',
          ),
          BarItem(
            icon: Icons.more_horiz,
            title: 'Menu',
          ),
        ],
      ),
    );
  }
}
