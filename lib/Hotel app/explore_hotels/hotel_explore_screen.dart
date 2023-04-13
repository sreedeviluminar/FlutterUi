import 'package:assignment_ui/Hotel%20app/explore_hotels/res/widgets/UserListTile.dart';
import 'package:assignment_ui/Hotel%20app/explore_hotels/res/widgets/custom_search_field.dart';
import 'package:assignment_ui/Hotel%20app/explore_hotels/res/widgets/hotel_packages_listview.dart';
import 'package:assignment_ui/Hotel%20app/explore_hotels/res/widgets/popular_hotels_listview.dart';
import 'package:flutter/material.dart';

class HotelExploreScreen extends StatelessWidget {
  const HotelExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                UserListTile(),
                CustomSearchfield(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Text(
                    'Popular Hotels',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          const PopularHotelsListView(),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                'Hotel Packages',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          HotelsPackagesListView()
        ],
      ),
    );
  }
}
