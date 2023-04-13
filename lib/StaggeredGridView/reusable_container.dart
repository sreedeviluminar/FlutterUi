import 'package:flutter/material.dart';

class reusableConatainers extends StatelessWidget {
  final String image;
  final String text;
  final String subTitle;

  const reusableConatainers(
      {required this.image, required this.text, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        Expanded(
            child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
        )),
        ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Text(subTitle),
        )
      ]),
    );
  }
}
