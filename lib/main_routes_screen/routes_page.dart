import 'package:assignment_ui/StaggeredGridView/reusable_container.dart';
import 'package:assignment_ui/main_routes_screen/route_page_cards.dart';
import 'package:assignment_ui/main_routes_screen/routesList.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class RoutesPage extends StatelessWidget {
  static String id = 'Routes_Page';

  const RoutesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Sample Flutter Ui',
          ),
        ),
        titleTextStyle: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: StaggeredGridView.countBuilder(
        padding: EdgeInsets.all(15),
        staggeredTileBuilder: (index) =>
            StaggeredTile.count(2, index.isEven ? 4 : 5),
        crossAxisCount: 4,
        itemCount: uiList.length,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              uiList[index]['Routes'],
            );
          },
          child: RoutePageCards(
            image: uiList[index]['Image'],
            text: uiList[index]['Titles'],
            subTitle: '',
          ),
        ),
      ),
    );
  }
}
