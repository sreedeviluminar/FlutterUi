import 'package:assignment_ui/tourism_app/screens/home_screen/contries_card/popular_countries_card.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:TourismAppUi()));
}
class TourismAppUi extends StatelessWidget {
  static String id = 'Tourism_App_Ui';
  const TourismAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Places'),
                const SizedBox(height: 15),
                const Text(
                  'Popular',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(height: 15),
                PopularContriesCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
