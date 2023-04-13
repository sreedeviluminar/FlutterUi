import 'package:assignment_ui/Hotel%20app/hotels_data_list.dart';
import 'package:flutter/material.dart';

class HotelPackagesCard extends StatelessWidget {
  final int index;

  const HotelPackagesCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    String hotelName = hotelsDataList[index]['Name'];
    return Flexible(
      child: PhysicalModel(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          hotelsDataList[index]['imagePath'],
                        ),
                        fit: BoxFit.cover),
                  ),
                  width: 120,
                  height: 120,
                ),
                SizedBox(
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotelName.length < 14
                            ? hotelName
                            : hotelName.replaceRange(
                                14, hotelName.length, '...'),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'A three star in bolgaty',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      const Text(
                        '\$149 /night',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.lightBlue),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.car_repair,
                            color: Colors.lightBlue,
                            size: 25,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.local_restaurant_outlined,
                            color: Colors.lightBlue,
                            size: 25,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.wifi,
                            color: Colors.lightBlue,
                            size: 25,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(12),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Book',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
