import 'package:flutter/material.dart';


class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: Text(
          'FOOD HUB Search',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          })
        ],
      ),
      //drawer: Drawer(),
    );
  }
}


class DataSearch extends SearchDelegate<String> {
  final videos = [
    "Thai",
    "Chinese",
    "Japanese",
    "Italian",
    "American",
    "Hispanic",
    "French",
  ];
  final recentVideos = [
    "Japanese",
    "Hispanic",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
      query = " ";
    })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation, ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentVideos
        :videos.where((p)=> p.startsWith(query)).toList() ;

    return ListView.builder(
      itemBuilder: (context, index)=>ListTile(
        leading: Icon(Icons.music_video),
        title: RichText(text: TextSpan(
            text: suggestionList[index].substring(0,query.length),
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
