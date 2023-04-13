import 'package:assignment_ui/music_app_ui/res/data_list.dart';
import 'package:flutter/material.dart';

class PlayListTab extends StatelessWidget {
  const PlayListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 15),
                hintText: 'Search...',
                hintStyle: const TextStyle(color: Color(0xfff5b5c5)),
                suffixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white10,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white24))),
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            itemCount: playlist.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(playlist[index]), fit: BoxFit.cover)),
            ),
          ),
        )
      ],
    );
  }
}
