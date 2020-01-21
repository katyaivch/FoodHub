import 'package:flutter/material.dart';

import 'auth_service.dart';

class NewPasswordPage extends StatefulWidget {
  @override
  _NewPasswordPageState createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {

  final AuthService _auth = AuthService();
  String email = '';
  String error = '';
  final _formKey = GlobalKey<FormState>();

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
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: TextFormField(
                      onChanged: (value){
                        setState(() => email = value);
                      },
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter email';
                        }
                        return null;
                      },
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
                  onPressed: ()async{
                    if (_formKey.currentState.validate()){
                      dynamic result = await _auth.resetPassword(email);
                      if (result == null){
                        setState(() => error = 'Please enter a valid email');
                      }
                    }else{

                    }
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(fontSize: 20.0),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
