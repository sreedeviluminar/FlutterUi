// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:assignment_ui/WhatsappUi/screens/chatScreen.dart';
import 'package:assignment_ui/WhatsappUi/screens/CallsScreen.dart';
import 'package:assignment_ui/WhatsappUi/screens/StatusScreen.dart';
import 'package:flutter/material.dart';

class CommunityTab extends StatelessWidget {
  static String id = 'Whatsapp_Ui_Clone_Home_Page';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: Text('WhatsApp'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
              padding: EdgeInsets.only(right: 15),
              constraints: BoxConstraints(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
            ),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(child: Text('New Group')),
                PopupMenuItem(child: Text('New Broadcast')),
                PopupMenuItem(child: Text('Linked Devices')),
                PopupMenuItem(child: Text('Starred Messages')),
                PopupMenuItem(child: Text('Payments')),
                PopupMenuItem(child: Text('Settings')),
              ],
            )
          ],
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  child: Icon(Icons.group)),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Tab(text: 'Chat')),
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child: Tab(
                  text: 'Status',
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Tab(text: 'Call')),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          ChatScreen(),
          StausScreen(),
          CallsScreen()
        ]),
      ),
    );
  }
}
