// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:assignment_ui/Hotel%20app/explore_hotels/hotel_explore_screen.dart';
import 'package:assignment_ui/Hotel%20app/home_screen/hotels_home_screen.dart';
import 'package:flutter/material.dart';

class HotelMainScreen extends StatefulWidget {
  static String id = 'ScreenHotelApp';

  @override
  State<HotelMainScreen> createState() => _HotelMainScreenState();
}

class _HotelMainScreenState extends State<HotelMainScreen> {
  int selectedIndex = 0;
  List hotelTabList = [
    HotelHomeTab(),
    HotelExploreScreen(),
    Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 241, 241),
        body: hotelTabList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: Colors.lightBlue,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.travel_explore), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}
