import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery
        .of(context)
        .size
        .width;
    final _height = MediaQuery
        .of(context)
        .size
        .height;
    final String imgUrl = 'https://pixel.nymag.com/imgs/daily/selectall/2017/12/26/26-eric-schmidt.w700.h700.jpg';

    return new Stack(children: <Widget>[

      new Container(color: Colors.white,),
      new Image.network(imgUrl, fit: BoxFit.fill,),
      new BackdropFilter(
          filter: new ui.ImageFilter.blur(
            sigmaX: 6.0,
            sigmaY: 6.0,
          ),
          child: new Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),)),
      new Scaffold(
          appBar:  new AppBar(
            backgroundColor: Colors.orange[800],
            title: Text(
              'FOOD HUB',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          //drawer: new Drawer(child: new Container(),),
          backgroundColor: Colors.transparent,
          body: new Center(
            child: new Column(
              children: <Widget>[
                new SizedBox(height: _height / 12,),
                new CircleAvatar(
                  radius: _width < _height ? _width / 4 : _height / 4,
                  backgroundImage: NetworkImage(imgUrl),),
                new SizedBox(height: _height / 25.0,),
                new Text('Big Head', style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: _width / 15,
                    color: Colors.orange[800]),),
                new Padding(padding: new EdgeInsets.only(
                    top: _height / 30, left: _width / 8, right: _width / 8),
                  child: new Text(
                    'New found love for coooking.\nMy favorite style of food is italian ',
                    style: new TextStyle(fontWeight: FontWeight.normal,
                        fontSize: _width / 25,
                        color: Colors.orange[800]), textAlign: TextAlign.center,),),
                new Divider(height: _height / 30, color: Colors.orange[800],),
                new Padding(
                  padding: new EdgeInsets.only(
                      left: _width / 8, right: _width / 8),
                  child: new FlatButton(onPressed: () {},
                    child: new Container(child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(Icons.person),
                        new SizedBox(width: _width / 30,),
                        new Text('MY ORDERS')
                      ],)), color: Colors.orange[800],),),
                new Padding(
                  padding: new EdgeInsets.only(
                      left: _width / 8, right: _width / 8),
                  child: new FlatButton(onPressed: () {},
                    child: new Container(child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new SizedBox(width: _width / 30,),
                        new Text('MY ADDRESSES')
                      ],)), color: Colors.orange[800],),),
                new Padding(
                  padding: new EdgeInsets.only(
                      left: _width / 8, right: _width / 8),
                  child: new FlatButton(onPressed: () {},
                    child: new Container(child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new SizedBox(width: _width / 30,),
                        new Text('MY FAVORITES')
                      ],)), color: Colors.orange[800],),),
                new Padding(
                  padding: new EdgeInsets.only(
                      left: _width / 8, right: _width / 8),
                  child: new FlatButton(onPressed: () {},
                    child: new Container(child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new SizedBox(width: _width / 30,),
                        new Text('MY INFORMATION')
                      ],)), color: Colors.orange[800],),),
              ],
            ),
          )
      )
    ],
    );
  }
  Widget rowCell(int count, String type) => new Expanded(child: new Column(children: <Widget>[
    new Text('$count',style: new TextStyle(color: Colors.orange[800]),),
    new Text(type,style: new TextStyle(color: Colors.orange[800], fontWeight: FontWeight.normal))
  ],
  )
  );
}
