import 'package:flutter/material.dart';
import 'package:foohub_app/checkout_page.dart';
import 'package:foohub_app/home_page.dart';
import 'package:foohub_app/login_page.dart';
import 'package:foohub_app/recipe_page.dart';
import 'package:foohub_app/registration_page.dart';
import 'package:foohub_app/search_page.dart';
import 'package:foohub_app/userprofile_page.dart';
import 'package:provider/provider.dart';
import 'package:foohub_app/user_model.dart';

import 'list_page.dart';
import 'newpassword_page.dart';
import 'orderinformation_page.dart';


//TODO: change to actual home page

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    //return either Home or auth pages
    if (user == null){
      //return LoginPage();
      return LoginPage();
      //return ProfilePage(title: 'Profile');
    }else{
      return HomeView();
    }
  }
}
