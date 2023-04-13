// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class UserListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.all(20),
      title: Text(
        'Hello @Shihab',
        style: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 17),
      ),
      subtitle: Text(
        'Find your favourite hotel',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17),
      ),
      trailing: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
          'https://img.freepik.com/free-vector/people-white_24877-49457.jpg?w=360&t=st=1675058063~exp=1675058663~hmac=554fff947c5bc0abd9262081b4107c43812bfde6b4fe3018dbf7eb2915aaa684',
        ),
      ),
    );
  }
}
