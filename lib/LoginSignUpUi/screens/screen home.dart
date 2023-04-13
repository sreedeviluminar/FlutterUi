// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, unnecessary_this, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:convert';

import 'package:assignment_ui/LoginSignUpUi/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ScreenHome extends StatefulWidget {
  @override
  State<ScreenHome> createState() => _ScreenNewsState();
}

class _ScreenNewsState extends State<ScreenHome> {
  String? title;
  String? newsBody;
  String? imagePath;
  bool isloaded = false;
  List apidata = [];
  var statuscode;
  Future<void> getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=keyword&apiKey=6c73a0077c3b4ee4a2d159e10b7ac892'));
    statuscode = response.statusCode;

    if (response.statusCode == 200) {
      String data = response.body;

      for (int index = 0; index < 99; index++) {
        this.title = await jsonDecode(data)['articles'][index]['title'];
        this.newsBody = await jsonDecode(data)['articles'][index]['content'];
        this.imagePath =
            await jsonDecode(data)['articles'][index]['urlToImage'];
        apidata.add([title, newsBody, imagePath]);
      }
    } else {
      throw response.statusCode;
    }
  }

  void initialload() async {
    await getData();
    setState(() {
      if (apidata[0] != null) {
        isloaded = true;
      }
    });
    super.initState();
  }

  @override
  void initState() {
    super.initState();
    initialload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Row(
            children: [
              Text(
                'Flutter',
                style:
                    TextStyle(color: kThemeColor, fontWeight: FontWeight.bold),
              ),
              Text('News')
            ],
          )),
      backgroundColor: Colors.grey.shade300,
      body: Visibility(
        visible: isloaded,
        child: ListView.builder(
          itemCount: apidata.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      apidata[index][2] != null
                          ? Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: NetworkImage(apidata[index][2]),
                                      fit: BoxFit.cover)),
                            )
                          : SizedBox(),
                      Text(
                        apidata[index][0],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(apidata[index][1]),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        replacement: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
