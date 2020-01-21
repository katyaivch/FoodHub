import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State {
  int _selectedIndex = 0;

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
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return new Text('Loading...');
              default:
                return new ListView(
                  children:
                      snapshot.data.documents.map((DocumentSnapshot document) {
                    return new Text(document['name']);
                    // return new ListTile(
                    //   title: new Text(document['title']),
                    //   subtitle: new Text(document['author']),
                    // );
                  }).toList(),
                );
            }
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.orange[800],
                size: 45.0,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.view_comfy,
                color: Colors.orange[800],
                size: 45.0,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.feedback,
                color: Colors.orange[800],
                size: 45.0,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.orange[800],
                size: 45.0,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.orange[800],
                size: 45.0,
              ),
              title: Text(''),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              switch (_selectedIndex) {
                case 0:
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProfilePage(title: 'Profile')));
                  }
                  break;
                case 1:
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeView()));
                  }
                  break;
                case 2:
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FAQPage()));
                  }
                  break;
                case 3:
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeView()));
                  }
                  break;
                case 4:
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShoppingCart()));
                  }
                  break;
              }
            });
          },
        ),
      ),
    );
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
