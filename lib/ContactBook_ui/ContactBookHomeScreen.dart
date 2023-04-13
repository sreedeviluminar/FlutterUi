// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:assignment_ui/ContactBook_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class ContactUiHomeScreen extends StatelessWidget {
  List contactsList = [
    ['assets/images/pic1.jpg', 'Anees'],
    ['assets/images/pic2.jpg', 'Sanjay'],
    ['assets/images/pic3.jpg', 'Sreejesh'],
    ['assets/images/pic4.jpg', 'Abid'],
    ['assets/images/pic5.jpg', 'Anand'],
    ['assets/images/pic6.jpg', 'Pavan'],
    ['assets/images/pic7.jpg', 'Akhil'],
    ['assets/images/pic1.jpg', 'Anees'],
    ['assets/images/pic2.jpg', 'Sanjay'],
    ['assets/images/pic3.jpg', 'Sreejesh'],
    ['assets/images/pic4.jpg', 'Abid'],
    ['assets/images/pic5.jpg', 'Anand'],
    ['assets/images/pic6.jpg', 'Pavan'],
    ['assets/images/pic7.jpg', 'Akhil'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 12, bottom: 12),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(8)),
                width: 35,
                child: Icon(
                  Icons.add,
                  size: 28,
                  color: Colors.black,
                )),
          )
        ],
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 30, top: 10),
          child: Text(
            'Contacts',
            style: TextStyle(fontSize: 25, color: Colors.white70),
          ),
        ),
        backgroundColor: Color(0xFF232633),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF1e1e28),
                Color(0xFF232633),
              ]),
        ),
        child: Column(
          children: [
            Container(
              height: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_sharp,
                            color: Color(0xFF828492),
                          ),
                          fillColor: Color(0xFF323444),
                          filled: true,
                          enabledBorder: kenabledBorderStyle,
                          focusedBorder: kfocusBorderStyle,
                          hintText: 'search',
                          hintStyle: kHintTextStyle),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Favourites',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 5, right: 15),
                      itemCount: contactsList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 20, bottom: 10),
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(contactsList[index][0]),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              contactsList[index][1],
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  itemBuilder: (context, index) => ListTile(
                    title: Text(contactsList[index][1]),
                    subtitle: Text('+91 989 898 7689'),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(contactsList[index][0]),
                      radius: 30,
                    ),
                    trailing: Wrap(
                      children: [
                        Icon(Icons.message),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.phone),
                      ],
                    ),
                  ),
                  itemCount: contactsList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
