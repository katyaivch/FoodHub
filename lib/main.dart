import 'package:flutter/material.dart';
import 'package:foohub_app/auth_service.dart';
import 'package:foohub_app/faq_page.dart';
import 'package:foohub_app/login_page.dart';
import 'package:foohub_app/registration_page.dart';
import 'package:foohub_app/user_model.dart';
import 'package:foohub_app/wrapper.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}



