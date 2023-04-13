// ignore_for_file: non_constant_identifier_names

import 'package:assignment_ui/invoice_app-ui/screens/main_screen/botttom_tabs/profile_bottom_tab.dart';
import 'package:assignment_ui/invoice_app-ui/screens/main_screen/botttom_tabs/rewards_bottom_tab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InvoiceMainScreen extends StatefulWidget {
  @override
  State<InvoiceMainScreen> createState() => _InvoiceMainScreenState();
}

class _InvoiceMainScreenState extends State<InvoiceMainScreen> {
  int selectedIndex = 2;

  List<Widget> BottomTabList = [
    Center(
      child: Image.asset('assets/images/invoice/invoicebg.png'),
    ),
    Center(
      child: Image.asset('assets/images/invoice/invoicebg.png'),
    ),
    const RewardsBottomTab(),
    ProfileBottomTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BottomTabList[selectedIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            selectedIconTheme: const IconThemeData(color: Colors.blue),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.widgets_rounded), label: ''),
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.gift,
                    size: 20,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: '')
            ],
          ),
        ));
  }
}
