import 'package:flutter/material.dart';
import 'package:foohub_app/auth_service.dart';

class HomePage extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodHub'),
        //centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body: FlatButton(
        onPressed: () async {
          await _auth.signOut();
        },
        color: Colors.orange[800],
        child: Text('LOG out'),
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
