import 'package:assignment_ui/Hotel%20app/hotels_data_list.dart';
import 'package:flutter/material.dart';

class PopularHotelsCard extends StatelessWidget {
  final int index;
  const PopularHotelsCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    String hotelName = hotelsDataList[index]['Name'];
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      elevation: 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .45,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(hotelsDataList[index]['imagePath']),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * .45,
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelName.length < 14
                          ? hotelName
                          : hotelName.replaceRange(14, hotelName.length, '...'),
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .35,
                      child: const Text(
                        'A four star hotel in Kochi',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '\$89 / night',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.lightBlue,
                          ),
                        ),
                        Text(
                          '4.2 ★',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.lightBlue,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
