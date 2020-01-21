import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 20.0),
            margin: EdgeInsets.fromLTRB(60.0, 40.0, 40.0, 0.0),

            child: Image(
              image: NetworkImage('https://yakimaymca.org/wp-content/uploads/2017/08/Telephone-icon-orange-1024x1024.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'REACH US ON',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.orange[800],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '11111-2222-33333',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.orange[800],
              ),
            ),
          ),
          FlatButton(
            onPressed: (){},
            color: Colors.orange[800],
            child: Text('FAQs'),
          ),
          Container(
            padding: EdgeInsets.all(0.0),
            child: Text(
              'Or write us on',
              style: TextStyle(
                fontSize: 20.0,

                letterSpacing: 2.0,
                color: Colors.orange[800],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(0.0),
            child: Text(
              'info@foodhub.de',
              style: TextStyle(
                fontSize: 20.0,

                letterSpacing: 2.0,
                color: Colors.orange[800],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //currentIndex: _currentIndex,
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
        onTap: (value) {
          //_currentIndex = value;
        },
      ),
    );
  }
}
