import 'package:assignment_ui/invoice_app-ui/screens/main_screen/Tabs/rewards_tab/custom_chip.dart';
import 'package:assignment_ui/invoice_app-ui/screens/main_screen/Tabs/rewards_tab/rewards_listtile.dart';
import 'package:flutter/material.dart';

class RewardsTab extends StatelessWidget {
  const RewardsTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomChip(label: 'All'),
                CustomChip(label: 'Direct rewards'),
                CustomChip(
                  label: 'Indirect Rewards',
                  color: Color(0xff3834a3),
                ),
              ]),
        ),
        Flexible(
          child: ListView.separated(
            padding: EdgeInsets.all(15),
            itemCount: 15,
            itemBuilder: (context, index) => RewardsTile(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          ),
        )
      ],
    );
  }
}
