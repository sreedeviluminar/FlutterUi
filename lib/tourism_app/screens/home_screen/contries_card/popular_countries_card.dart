import 'package:assignment_ui/tourism_app/countries_data_list/countries_data_list.dart';
import 'package:assignment_ui/tourism_app/screens/country_details_screen/details_screen.dart';
import 'package:flutter/material.dart';

class PopularContriesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: countriesDataList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(index: index),
              ));
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * .15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(countriesDataList[index]['image']),
                fit: BoxFit.cover),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              countriesDataList[index]['country'],
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
