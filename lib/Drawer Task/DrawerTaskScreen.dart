// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class DrawerTaskScreen extends StatelessWidget {
  static String id = 'Drawer_Task_Screen';
  List DataList = [
    ['Dashboard', Icons.space_dashboard_outlined],
    ['Leads', Icons.group_add_outlined],
    ['Clients', Icons.group_sharp],
    ['Projects', Icons.rocket_launch],
    ['Patients', Icons.handshake],
    ['Subscription', Icons.subscriptions],
    ['Payments', Icons.payment],
    ['Users', Icons.person],
    ['Library', Icons.layers]
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SliderDrawer(
        sliderOpenSize: MediaQuery.of(context).size.width * .8,
        slider: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                Color(0xffca485c),
                Color(0xffffb56b),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: Center(
                          child: ListTile(
                            title: Text(
                              'David Beckham',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70),
                            ),
                            subtitle: Text(
                              'Footballer',
                              style: TextStyle(color: Colors.white70),
                            ),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                'https://www.planetsport.com/image-library/square/500/d/david-beckham-england-profile.jpg',
                              ),
                            ),
                          ),
                        ),
                      ),
                      ListView.builder(
                        padding: EdgeInsets.only(left: 20),
                        shrinkWrap: true,
                        itemCount: DataList.length,
                        itemBuilder: (BuildContext context, int index) =>
                            DrawerTiles(
                                title: DataList[index][0],
                                icon: DataList[index][1]),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xffff624f),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(
                                      color: Color(0xffff624f),
                                    )))),
                    onPressed: () {},
                    child: Text(
                      'Sign Out ',
                      style: TextStyle(color: Colors.white70),
                    )),
              )
            ],
          ),
        ),
        child: Container(
          child: Center(
            child: Text('Home Page'),
          ),
        ),
      )),
    );
  }
}

class DrawerTiles extends StatelessWidget {
  final String title;
  final IconData icon;

  const DrawerTiles({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 30,
      leading: Icon(
        icon,
        color: Colors.white70,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white60),
      ),
    );
  }
}
