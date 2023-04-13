// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class GridviewBuilderScreen extends StatelessWidget {
  static String id = 'GridviewBuilder_Screen';
  @override
  Widget build(BuildContext context) {
    List cardContent = [
      [Icons.home, 'Home\nicon', Colors.blue],
      [Icons.notification_important, 'Notificatio\nShaker', Colors.green],
      [Icons.camera_alt_outlined, 'camera\nShaker', Colors.grey],
      [Icons.alarm, 'alarm\nShaker', Colors.yellow],
      [Icons.flip_to_back_outlined, 'Flip\nShaker', Colors.redAccent.shade700],
      [Icons.manage_search, 'manage\nShaker', Colors.blue.shade200],
      [Icons.terminal, 'Termional\nShaker', Colors.lightBlue],
      [Icons.switch_access_shortcut, 'Switch\nShaker', Colors.grey.shade700],
      [Icons.assistant_navigation, 'Assistant\nShaker', Colors.limeAccent],
      [Icons.download_done, 'Download\nShaker', Colors.red],
      [Icons.select_all, 'Select\nShaker', Colors.orange],
      [Icons.install_mobile, 'Install\nShaker', Colors.blueGrey.shade700],
      [Icons.hide_source, 'Hide\nShaker', Colors.brown],
      [Icons.move_up, 'Move\nShaker', Colors.green],
      [Icons.keyboard_command_key, 'Keyboard\nShaker', Colors.grey.shade800],
    ];
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gridview Task'),
        backgroundColor: Colors.green.shade300,
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(20.0),
          itemCount: 15,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 2),
          itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: cardContent[index][2]),
              child: Center(
                child: ListTile(
                  leading: Icon(
                    cardContent[index][0],
                    size: 40,
                  ),
                  title: Text(
                    cardContent[index][1],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ))),
    );
  }
}
