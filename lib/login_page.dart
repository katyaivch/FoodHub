import 'package:flutter/material.dart';
import 'package:foohub_app/auth_service.dart';
import 'package:foohub_app/newpassword_page.dart';
import 'package:foohub_app/registration_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

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
        children: <Widget>[
          /*Container(
            width: 350,
            height: 350,
            child: Image(
              image: AssetImage('assets/foodhub_landing.png'),
            ),

          ),*/
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
                      hintText: 'Username',
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
                    onChanged: (value){
                      setState(() => password = value);
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  ),
                ),
              ],
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
                onPressed: ()async{
                  if (_formKey.currentState.validate()){
                    print(email);
                    print(password);
                    dynamic result = await _auth.signInWithEmailandPass(email,password);
                    if (result == null){
                      setState(() => error = 'Please enter a valid email');
                    }
                  }else{

                  }
                },
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
                  navigateToRegisterPage(context);
                },
                //color: Colors.orange[800],
                child: Text('Registration'),

              ),
              FlatButton(
                onPressed: (){
                  navigateToResetPassPage(context);
                },

                child: Text('Forgot Password'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future navigateToRegisterPage(BuildContext context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
  }

  Future navigateToResetPassPage(BuildContext context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => NewPasswordPage()));
  }
}
