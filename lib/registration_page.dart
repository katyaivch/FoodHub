import 'package:flutter/material.dart';
import 'package:foohub_app/auth_service.dart';

class RegistrationPage extends StatefulWidget {

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodHub'),
        //centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /*Container(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage('assets/foodhub_logo.png'),
            ),

          ),*/
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: TextFormField(
                    onChanged: (value){},
                    decoration: const InputDecoration(
                      hintText: 'Username',
                    ),

                  ),
                ),
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
                Container(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: TextFormField(
                    onChanged: (value){},
                    decoration: const InputDecoration(
                      hintText: 'Address',
                    ),

                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: TextFormField(
                    onChanged: (value){},
                    decoration: const InputDecoration(
                      hintText: 'Phone',
                    ),

                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: TextFormField(
                    onChanged: (value){
                      setState(() => password = value);
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    validator: (value) {
                      if (value.length < 6 ) {
                        return 'Please enter pass 6+ charts';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: TextFormField(
                    onChanged: (value){},
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Repeat Password',
                    ),

                  ),
                ),
              ],
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
                onPressed: ()async{
                  if (_formKey.currentState.validate()){
                    dynamic result = await _auth.registerWithEmailandPass(email,password);
                    if (result == null){
                      setState(() => error = 'Please enter a valid email');
                    }
                  }else{

                  }
                },
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
