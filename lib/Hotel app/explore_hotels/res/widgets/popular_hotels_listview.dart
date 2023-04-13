import 'package:assignment_ui/Hotel%20app/explore_hotels/res/widgets/popular_hotels_card.dart';
import 'package:assignment_ui/Hotel%20app/hotels_data_list.dart';
import 'package:flutter/material.dart';

class PopularHotelsListView extends StatelessWidget {
  const PopularHotelsListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: 180,
        height: MediaQuery.of(context).size.height * .33,
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => PopularHotelsCard(
                  index: index,
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
            itemCount: hotelsDataList.length),
      ),
    );
  }
}
