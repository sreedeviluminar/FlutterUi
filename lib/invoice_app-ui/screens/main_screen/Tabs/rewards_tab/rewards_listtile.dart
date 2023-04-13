import 'dart:math';

import 'package:flutter/material.dart';

class RewardsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var randomNumber = Random().nextInt(266278877) * 26627;
    var randomIndexs = Random().nextInt(18) * 4;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        minLeadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            '$randomIndexs',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        title: Text(
          'Order ID - $randomNumber',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                ' Valid Till',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              Text(
                'Jan 27 2023',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
