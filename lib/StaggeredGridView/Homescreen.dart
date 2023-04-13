import 'package:assignment_ui/StaggeredGridView/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class StaggeredGridViewScreen extends StatelessWidget {
  static String id = 'Staggered_GridView_Screen';
  @override
  Widget build(BuildContext context) {
    List imagesList = [
      [
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
        'New York',
        '20 Jan 2001\nCarl sagan'
      ],
      [
        'https://images.pexels.com/photos/64271/queen-of-liberty-statue-of-liberty-new-york-liberty-statue-64271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'USA',
        '21 Feb 2002\nSanjay Sanil'
      ],
      [
        'https://images.pexels.com/photos/1525612/pexels-photo-1525612.jpeg?auto=compress&cs=tinysrgb&w=600',
        'India',
        '23 March 2003\nAnand CB'
      ],
      [
        'https://images.pexels.com/photos/3052361/pexels-photo-3052361.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Canada',
        '24 April 2004\nAnees Hassainar'
      ],
      [
        'https://images.pexels.com/photos/1274799/pexels-photo-1274799.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Singapore',
        '25 May 2005\nSharafath Ali'
      ],
      [
        'https://images.pexels.com/photos/1753260/pexels-photo-1753260.jpeg?auto=compress&cs=tinysrgb&w=600',
        'London',
        '26 June 2006\nFazalul Abid'
      ],
      [
        'https://images.pexels.com/photos/1400249/pexels-photo-1400249.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Germany',
        '27 July 2007\nPavan Kumar'
      ],
      [
        'https://images.pexels.com/photos/2901581/pexels-photo-2901581.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Spain',
        '28 Aug 2008\nSreejesh'
      ],
      [
        'https://images.pexels.com/photos/2689619/pexels-photo-2689619.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Qatar',
        '29 Sep 2009\nShihab Ks'
      ],
      [
        'https://images.pexels.com/photos/2168975/pexels-photo-2168975.jpeg?cs=srgb&dl=pexels-mohamed-almari-2168975.jpg&fm=jpg',
        "Australis",
        '30 Oct 2010\nAkhil Asokan'
      ],
      [
        'https://images.pexels.com/photos/12917781/pexels-photo-12917781.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'New Zealand',
        '30 Oct 2010\nMohd Sadiq'
      ],
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Staggered List Tile',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey.shade400,
        ),
        backgroundColor: Colors.grey.shade400,
        body: StaggeredGridView.countBuilder(
          padding: EdgeInsets.all(15),
          staggeredTileBuilder: (index) =>
              StaggeredTile.count(2, index.isEven ? 3 : 4),
          crossAxisCount: 4,
          itemCount: imagesList.length,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          itemBuilder: (context, index) => reusableConatainers(
            image: imagesList[index][0],
            text: imagesList[index][1],
            subTitle: imagesList[index][2],
          ),
        ),
      ),
    );
  }
}
