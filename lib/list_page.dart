import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final List<String> videoList = [
    "Thai",
    "Chinese",
    "Japanese",
    "Italian",
    "American",
    "Hispanic",
    "French",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: videoList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildVideoCard(context, index)
      ),
    );
  }
  Widget buildVideoCard(BuildContext context, int index) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Text(index.toString()),
            Text(videoList[index]),
          ],
        ),
      ),
    );
  }
}