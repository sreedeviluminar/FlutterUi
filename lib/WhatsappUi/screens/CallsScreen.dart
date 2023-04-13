// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  List callsDatas = [
    {
      'dp':
          'https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Anand Cb',
      'time': 'Yesterday,2:38'
    },
    {
      'dp':
          'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Sanjay sanil',
      'time': 'March 24, 2:00'
    },
    {
      'dp':
          'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Athira Baiju ',
      'time': 'March 23, 4:00'
    },
    {
      'dp':
          'https://images.pexels.com/photos/716411/pexels-photo-716411.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Pavan Kumar',
      'time': 'March 22, 5:00'
    },
    {
      'dp':
          'https://images.pexels.com/photos/442559/pexels-photo-442559.jpeg?auto=compress&cs=tinysrgb&w=600',
      'name': 'Fazalul abid',
      'time': 'February 01, 9:00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff26cd61),
        onPressed: () {},
        child: Icon(Icons.add_call),
      ),
      body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          itemCount: 100,
          itemBuilder: (context, index) {
            //random number generation
            Random random = Random();
            int randomNumber = random.nextInt(5) + 1;
            var datas = (index % callsDatas.length);
            return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(callsDatas[datas]['dp']),
                ),
                title: Text(
                  callsDatas[datas]['name'],
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                subtitle: Wrap(
                  children: [
                    Icon(
                      randomNumber % 2 == 0
                          ? Icons.call_received
                          : Icons.call_made,
                      size: 20,
                      color: randomNumber % 2 == 0 ? Colors.red : Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      callsDatas[datas]['time'],
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.phone,
                  color: Color(0xff075e54),
                ));
          },
          separatorBuilder: (context, int index) => Divider(
                indent: 80,
                endIndent: 10,
              )),
    );
  }
}
