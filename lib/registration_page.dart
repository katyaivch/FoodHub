import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodHub'),
        //centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage('assets/foodhub_logo.png'),
            ),

          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: TextFormField(

              decoration: const InputDecoration(
                hintText: 'Username',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: TextFormField(

              decoration: const InputDecoration(
                hintText: 'Email',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: TextFormField(

              decoration: const InputDecoration(
                hintText: 'Address',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: TextFormField(

              decoration: const InputDecoration(
                hintText: 'Phone',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Repeat Password',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Switch (value: null),
              Checkbox(
                value: false,
              ),
              Text('I agree with terms and conditions'),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: (){},
                color: Colors.orange[800],
                child: Text('Register'),
              ),
              FlatButton(
                onPressed: (){},
                color: Colors.blue[800],
                child: Text('Register with FB'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
