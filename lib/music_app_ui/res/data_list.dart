import 'package:assignment_ui/music_app_ui/screens/main_screen/home_tab/home_tab.dart';
import 'package:assignment_ui/music_app_ui/screens/main_screen/play_list_tab/play_list_tab.dart';
import 'package:flutter/material.dart';

List DataList = [
  {
    'PlaylistImage':
        'https://i.pinimg.com/564x/21/b0/ea/21b0eaab1a210def4f5b5096fcb4dc40.jpg',
    'Name': 'Hero',
    'Singer': 'Taylor Swift',
    'SongImage':
        'https://i.pinimg.com/564x/8e/30/42/8e3042b5a0fa9cde2503e3975056d882.jpg',
  },
  {
    'PlaylistImage':
        'https://i.pinimg.com/564x/70/dc/34/70dc34fe6285cbea63e4a1025fa4255e.jpg',
    'Name': 'Lift Me Up',
    'Singer': 'Rihanna',
    'SongImage':
        'https://i.pinimg.com/564x/ed/13/e8/ed13e8d401599d350c0e1142dfe77798.jpg',
  },
  {
    'PlaylistImage':
        'https://i.pinimg.com/736x/c1/06/f5/c106f5f8d5153fd592fdc0ed15a7f9d6.jpg',
    'Name': 'Unholy',
    'Singer': 'Sam Smith',
    'SongImage':
        'https://i.pinimg.com/736x/1d/83/0e/1d830e9d1ba0570e1ec2c46db50ddf02.jpg',
  },
  {
    'PlaylistImage':
        'https://i.pinimg.com/564x/a2/73/48/a27348bcfc3a0c8b2b52c08cf40ed770.jpg',
    'Name': 'Depression',
    'Singer': 'Dax',
    'SongImage':
        'https://i.pinimg.com/564x/3a/be/ac/3abeac1f414916dc746ed894c4bdf42e.jpg',
  },
  {
    'PlaylistImage':
        'https://i.pinimg.com/564x/b1/ad/e8/b1ade82b60e1b5d15665dac4ff6d057e.jpg',
    'Name': "I'm Good",
    'Singer': 'David Guetta',
    'SongImage':
        'https://i.pinimg.com/564x/27/c4/e8/27c4e866b46d07b195473fce3f75a7b0.jpg',
  },
  {
    'PlaylistImage':
        'https://i.pinimg.com/564x/e5/a6/2e/e5a62ea77203c4db399c78b754b76575.jpg',
    'Name': 'Demons',
    'Singer': 'Imagine Drafons',
    'SongImage':
        'https://i.pinimg.com/564x/e5/a6/2e/e5a62ea77203c4db399c78b754b76575.jpg',
  },
];

List<Widget> listOfWidget = <Widget>[
  const HomeTab(),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      Icons.search,
      size: 56,
      color: Colors.brown,
    ),
  ),
  PlayListTab(),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      Icons.tune_rounded,
      size: 56,
      color: Colors.brown,
    ),
  ),
];

List playlist = [
  'https://i.pinimg.com/564x/7a/04/a5/7a04a575967cffd33776eb856fc1cbb2.jpg',
  'https://i.pinimg.com/564x/70/dc/34/70dc34fe6285cbea63e4a1025fa4255e.jpg',
  'https://i.pinimg.com/564x/21/b0/ea/21b0eaab1a210def4f5b5096fcb4dc40.jpg',
  'https://i.pinimg.com/564x/54/e0/ba/54e0ba2bd8c4c433891bbfa9c308e1f8.jpg',
  'https://i.pinimg.com/750x/32/e3/01/32e301027db2b414996d1b930a62f60d.jpg',
  'https://i.pinimg.com/564x/b9/9f/31/b99f31ee464ffd3f4fea496f3165f76a.jpg',
  'https://i.pinimg.com/736x/a6/4a/d7/a64ad72580e40c2097fd971f1d7a6e3b.jpg',
  'https://i.pinimg.com/564x/42/6e/74/426e748315ee33b2fda45d078a53cfd6.jpg',
  'https://i.pinimg.com/564x/d0/bd/33/d0bd33f1b5fda306bc0809cf217a9062.jpg',
];
