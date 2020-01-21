import 'package:flutter/material.dart';

class OrderConfirmationPage extends StatefulWidget {
  @override
  _OrderConfirmationPageState createState() => _OrderConfirmationPageState();
}

class _OrderConfirmationPageState extends State<OrderConfirmationPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(120.0, 120.0, 120.00, 30.0),
              child: Text(
                'Order number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(120.0, 40.0, 120.00, 30.0),
              child: Text(
                '23',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey[300],
                  width: 3,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(120.0, 30.0, 120.00, 30.0),
              child: Text(
                'is confirmed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(120.0, 30.0, 120.00, 30.0),
              child: Text(
                'Thank You',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
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
          });
        },
      ),
    );
  }
}
