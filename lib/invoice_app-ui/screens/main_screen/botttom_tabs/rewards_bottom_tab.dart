import 'package:assignment_ui/invoice_app-ui/screens/main_screen/Tabs/rewards_tab/rewards_tab.dart';
import 'package:assignment_ui/invoice_app-ui/screens/main_screen/Tabs/rewards_tab/balance_top_container/balance_top_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RewardsBottomTab extends StatelessWidget {
  const RewardsBottomTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffecddd6),
              Color(0xffe0e2f1),
              Color(0xffebf0f4),
              Color(0xffe0e2f1),
              Color(0xffecddd6),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  IconButton(
                    padding:
                        const EdgeInsets.only(left: 5, top: 2.5, bottom: 2.5),
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Color(0xff4f86dc),
                    ),
                  ),
                  const Text(
                    'Rewards Wallet',
                    style: TextStyle(
                        color: Color(0xff4f86dc),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            BalanceTopContainer(),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffe7e4eb),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 10,
                            spreadRadius: -3,
                          ),
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, -2),
                            blurRadius: 10,
                            spreadRadius: -3,
                          ),
                        ],
                      ),
                      child: TabBar(
                        indicator: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff3834a3),
                              width: 3,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        labelColor: Color(0xff3834a3),
                        unselectedLabelColor: Colors.grey,
                        overlayColor:
                            MaterialStateProperty.all<Color?>(Colors.red),
                        indicatorColor: const Color(0xff4080e6),
                        tabs: [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.gift,
                                  size: 15,
                                ),
                                SizedBox(width: 10),
                                Text('Rewards')
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.local_atm,
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Text('Transactions')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        RewardsTab(),
                        Container(
                          color: Colors.red,
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
