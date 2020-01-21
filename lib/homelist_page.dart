import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State {
  @override
  Widget build(BuildContext context) {
    final title = "Recipe Videos";

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange[800],
              title: Text(
                'FOOD HUB',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              centerTitle: true,
            ),
            body: StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('Recipe').snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError)
                  return new Text('Error: ${snapshot.error}');
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return new Text('Loading...');
                  default:
                    return new ListView(
                      children: snapshot.data.documents
                          .map((DocumentSnapshot document) {
                        return new Text(document['name']);
                        // return new ListTile(
                        //   title: new Text(document['title']),
                        //   subtitle: new Text(document['author']),
                        // );
                      }).toList(),
                    );
                }
              },
            )));
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.topLeft,
                child: Icon(
                  choice.icon,
                  size: 80.0,
                  color: textStyle.color,
                )),
            new Expanded(
                child: new Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.topLeft,
              child: Text(
                choice.title,
                style: null,
                textAlign: TextAlign.left,
                maxLines: 5,
              ),
            )),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}