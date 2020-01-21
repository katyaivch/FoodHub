import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
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
      bottomNavigationBar: new BottomAppBar(
        color: Theme.of(context).primaryColor,
        elevation: 0.0,
        shape: new CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: new Container(
          height: 50.0,
          decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                width: (screenSize.width - 20) / 2,
                child: new Text(
                  "ADD TO FAVORITES",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
              new Container(
                width: (screenSize.width - 20) / 2,
                child: new Text(
                  "ORDER NOW",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: () {
              // Navigator.of(context).push(new CupertinoPageRoute(
              //    builder: (BuildContext context) => new GirliesCart()));
            },
            child: new Icon(Icons.shopping_cart),
          ),
          new CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: new Text(
              "0",
              style: new TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: new Column(
        children: <Widget>[
          new SizedBox(
            height: 50.0,
          ),
          new Card(
            child: new Container(
              width: screenSize.width,
              margin: new EdgeInsets.only(left: 20.0, right: 20.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    "widget.itemName",
                    style: new TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w700),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    "Item Sub name",
                    style: new TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.w400),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Icon(
                            Icons.star,
                            color: Colors.orange[800],
                            size: 20.0,
                          ),
                          new SizedBox(
                            width: 5.0,
                          ),
                          new Text(
                            "widget.itemRating",
                            style: new TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      new Text(
                        "widget.itemPrice",
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.red[500],
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
          new Card(
            child: new Container(
              width: screenSize.width,
              margin: new EdgeInsets.only(left: 20.0, right: 20.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    "Description",
                    style: new TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w700),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  new Text(
                    "My item full information",
                    style: new TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.w400),
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
