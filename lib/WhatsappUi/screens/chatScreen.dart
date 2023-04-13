// ignore_for_file: file_names, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  List profileDatas = [
    {
      'dp':
          'https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Anand Cb',
      'message': 'hi',
      'time': '2:30'
    },
    {
      'dp':
          'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Sanjay sanil',
      'message': 'hello',
      'time': '2:00'
    },
    {
      'dp':
          'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Athira Baiju ',
      'message': 'da',
      'time': '4:00'
    },
    {
      'dp':
          'https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Pavan Kumar',
      'message': 'dae',
      'time': '5:00'
    },
    {
      'dp':
          'https://images.pexels.com/photos/442559/pexels-photo-442559.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Fazalul abid',
      'message': 'nthada',
      'time': '9:00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff26cd61),
        onPressed: () {},
        child: Icon(Icons.message),
      ),
      body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          itemCount: 100,
          itemBuilder: (context, index) {
            //random number generation
            Random random = Random();
            int randomNumber = random.nextInt(5) + 1;

            var datas = (index % profileDatas.length);
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(profileDatas[datas]['dp']),
              ),
              title: Text(
                profileDatas[datas]['name'],
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              subtitle: Text(
                profileDatas[datas]['message'],
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
              ),
              trailing: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                direction: Axis.vertical,
                children: [
                  Text(
                    profileDatas[datas]['time'],
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff26cd61),
                    radius: 10,
                    child: Text(
                      '${randomNumber}',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, int index) => Divider(
                indent: 80,
                endIndent: 10,
              )),
    );
  }
}
