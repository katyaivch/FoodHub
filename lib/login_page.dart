import 'package:flutter/material.dart';
import 'package:foohub_app/registration_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodHub'),
        //centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 350,
            height: 350,
            child: Image(
              image: AssetImage('assets/foodhub_landing.png'),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Checkbox(
                value: true,
              ),
              Text('Remeber me'),
              FlatButton(
                onPressed: (){},
                color: Colors.orange[800],
                child: Text('LOG IN'),
              ),
            ],
          ),
          FlatButton(
            onPressed: (){},
            color: Colors.blue[800],
            child: Text('LOG IN with FB'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[


              FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
                  );
                },
                //color: Colors.orange[800],
                child: Text('Registration'),

              ),
              FlatButton(
                onPressed: (){},
                //color: Colors.orange[800],
                child: Text('Forgot Password'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
