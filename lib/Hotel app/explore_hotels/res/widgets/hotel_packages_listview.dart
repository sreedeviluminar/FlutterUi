import 'package:assignment_ui/Hotel%20app/explore_hotels/res/widgets/hotel_packages_card.dart';
import 'package:assignment_ui/Hotel%20app/hotels_data_list.dart';
import 'package:flutter/material.dart';

class HotelsPackagesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: double.infinity,
        child: ListView.separated(
            padding: EdgeInsets.all(20),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => HotelPackagesCard(
                  index: index,
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 30,
                ),
            itemCount: hotelsDataList.length),
      ),
    );
  }
}
