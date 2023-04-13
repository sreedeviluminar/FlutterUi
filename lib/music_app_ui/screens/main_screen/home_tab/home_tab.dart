import 'package:assignment_ui/music_app_ui/res/data_list.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Suggested playlists',
            style: TextStyle(
                color: Color(0xfff5b5c5),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        Flexible(
          flex: 4,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image:
                                NetworkImage(DataList[index]['PlaylistImage']),
                            fit: BoxFit.cover)),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 25,
                  ),
              itemCount: DataList.length),
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Recomended for you',
            style: TextStyle(
                color: Color(0xfff5b5c5),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        Flexible(
            flex: 6,
            child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(DataList[index]['SongImage']),
                              fit: BoxFit.cover),
                        ),
                      ),
                      title: Text(
                        DataList[index]['Name'],
                        style: const TextStyle(
                            color: Color(0xfff5b5c5),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      subtitle: Text(
                        DataList[index]['Singer'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      trailing: Wrap(children: const [
                        Icon(
                          Icons.star_outline,
                          color: Color(0xfff5b5c5),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.download,
                          color: Color(0xfff5b5c5),
                        )
                      ]),
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: DataList.length))
      ],
    );
  }
}
