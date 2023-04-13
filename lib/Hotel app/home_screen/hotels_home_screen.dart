import 'package:assignment_ui/Hotel%20app/details_screen/screen1.dart';
import 'package:assignment_ui/Hotel%20app/hotels_data_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelHomeTab extends StatelessWidget {
  const HotelHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              backgroundColor: Color(0xFF00dbf9),
              expandedHeight: 180,
              pinned: true,
              leading: Icon(Icons.menu),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Type your Location',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            hintText: 'Enter Location',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(width: 0, color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(width: 0, color: Colors.white)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                    )
                  ],
                ),
              )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TopConteiners(
                  color: Colors.red,
                  icon: Icons.bed,
                  title: 'Hotel',
                ),
                SizedBox(width: 10),
                TopConteiners(
                  color: Colors.blue,
                  icon: Icons.restaurant,
                  title: 'Restaurant',
                ),
                SizedBox(width: 10),
                TopConteiners(
                  color: Colors.amber,
                  icon: Icons.coffee,
                  title: 'Cafe',
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10.0,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  HotelsDetailsPage(index: index),
                            ));
                      },
                      child: roomCard(
                          imagePath: hotelsDataList[index]['imagePath'],
                          name: hotelsDataList[index]['Name'],
                          place: hotelsDataList[index]['Place'],
                          reviewCount: hotelsDataList[index]['reviewCount'],
                          starCount: hotelsDataList[index]['StarCount']),
                    ),
                childCount: hotelsDataList.length),
          )
        ],
      ),
    );
  }
}

Padding roomCard(
    {required imagePath,
    required name,
    required place,
    required starCount,
    required reviewCount}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                  image: NetworkImage(imagePath), fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.star_border,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.white,
                  child: Text(
                    "\$200",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            title: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            subtitle: Text(
              place,
              style: TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Row(
              children: [
                RatingBar.builder(
                  initialRating: starCount,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  ('$reviewCount reviews'),
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

class TopConteiners extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const TopConteiners(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 90,
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 22,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
