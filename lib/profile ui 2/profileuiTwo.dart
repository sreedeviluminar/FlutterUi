// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileUiTwoHome extends StatelessWidget {
  static String id = 'ProfileUiTwoHome';
  const ProfileUiTwoHome({super.key});

  @override
  Widget build(BuildContext context) {
    List dataList = [
      ['privacy', Icons.security],
      ['Purchase History', Icons.history],
      ['Help & Support', Icons.question_mark_rounded],
      ['settings', Icons.settings],
      ['Invite Friends', Icons.person_add],
      ['Logout', Icons.logout],
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.segment))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://img-cdn.inc.com/image/upload/w_1920,h_1080,c_fill/images/panoramic/Sundar-Pichai_507899_crlwze.jpg'),
              ),
              SizedBox(height: 30),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                      size: 40,
                    ),
                    SizedBox(width: 18),
                    CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 18),
                    CircleAvatar(
                      backgroundColor: Colors.blue.shade700,
                      child: FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 18),
                    FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                      size: 40,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text(
                  'Antony William ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700),
                ),
                subtitle: Text(
                  '@developer',
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                'Mobile App Developer',
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              ),
              Expanded(
                  child: ListView.separated(
                itemCount: dataList.length,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 231, 231, 231),
                      borderRadius: BorderRadius.circular(50)),
                  child: ListTile(
                    leading: Icon(dataList[index][1]),
                    title: Text(dataList[index][0]),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: 15),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
