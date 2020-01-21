import 'package:flutter/material.dart';

class NewPasswordPage extends StatefulWidget {
  @override
  _NewPasswordPageState createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(120.0, 120.0, 120.00, 30.0),
              child: Icon(
                Icons.account_circle,
                color: Colors.orange[800],
                size: 80.0,
              ),
            ),
            Form(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(100.0, 20.0, 100.00, 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter new password',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(100.0, 10.0, 100.00, 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Repeat new password',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(120.0, 30.0, 120.00, 30.0),
                child: FlatButton(
                  color: Colors.orange[800],
                  textColor: Colors.white,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "SAVE",
                    style: TextStyle(fontSize: 20.0),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
