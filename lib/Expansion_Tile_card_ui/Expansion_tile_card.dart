// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:assignment_ui/Expansion_Tile_card_ui/experience_card.dart';
import 'package:flutter/material.dart';

double height = 100;

class ExpansionTileCardSample extends StatefulWidget {
  static String id = 'Expansion_tile_card_sample';
  @override
  State<ExpansionTileCardSample> createState() =>
      _ExpansionTileCardSampleState();
}

class _ExpansionTileCardSampleState extends State<ExpansionTileCardSample> {
  List cardContents = [
    {
      'bg': 'https://assets1.lottiefiles.com/packages/lf20_Gpt6Y2.json',
      'title': 'Flutter Internship',
      'subtitle': '3 months',
      'institute': 'Luminar Technolab,Kochi',
      'details':
          'Gained indepth knowledge about Mobile Application Development and worked on various Projects',
    },
    {
      'bg': 'https://assets8.lottiefiles.com/packages/lf20_jtgztoga.json',
      'title': 'Android Training',
      'subtitle': '4 months',
      'institute': 'Android ,Kochi',
      'details':
          'Gained indepth knowledge about Android Development and worked on various Projects',
    },
    {
      'bg': 'https://assets6.lottiefiles.com/packages/lf20_v4isjbj5.json',
      'title': 'Java Training',
      'subtitle': '5 months',
      'institute': 'Java ,Kochi',
      'details':
          'Gained indepth knowledge about Java Programming and worked on various Projects',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
        title: Text('Expansion Tile Card'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'Experience',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey.shade800),
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ExperienceTileCard(
                    index: index,
                    cardContents: cardContents,
                  ),
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemCount: cardContents.length)
        ],
      ),
    );
  }
}
