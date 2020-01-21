
import 'package:flutter/material.dart';

class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class Address {
  @required
  String address;
  @required
  String id;

  Address(this.address, this.id);
}

class DeliveryTime {
  @required
  String time;
  @required
  String id;

  DeliveryTime(this.time, this.id);
}

class _CheckOutPageState extends State<CheckOutPage> {
  int _selectedIndex = 0;
  List<Address> _addresses = [
    new Address("Address 1", "1"),
    new Address("Address 2", "2"),
    new Address("Address 3", "3")
  ];
  Address _selectedAddress;

  List<DeliveryTime> _deliveryTimes = [
    new DeliveryTime("As soon as possible", "1"),
    new DeliveryTime("In 1 hour", "2"),
    new DeliveryTime("In 2 hours", "3")
  ];
  DeliveryTime _selectedDeliveryTime;

  @override
  void initState() {
    super.initState();
    _selectedAddress = _addresses[0];
    _selectedDeliveryTime = _deliveryTimes[0];
  }

  // List<String> _dropdownValues = ['One', 'Two', 'Free', 'Four'];
  // String _dropdownValue = 'One';

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
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.00, 30.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300],
                    width: 2,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Select delivery address',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: DropdownButton<String>(
                        value: _selectedAddress.id,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            _selectedAddress = _addresses.firstWhere(
                                    (address) => address.id == newValue);
                          });
                        },
                        items: _addresses
                            .map<DropdownMenuItem<String>>((Address address) {
                          return DropdownMenuItem<String>(
                            value: address.id,
                            child: Text(address.address),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.00, 30.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300],
                    width: 2,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Select delivery time',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: DropdownButton<String>(
                        value: _selectedDeliveryTime.id,
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            _selectedDeliveryTime = _deliveryTimes.firstWhere(
                                    (deliveryTime) => deliveryTime.id == newValue);
                          });
                        },
                        items: _deliveryTimes.map<DropdownMenuItem<String>>(
                                (DeliveryTime deliveryTime) {
                              return DropdownMenuItem<String>(
                                value: deliveryTime.id,
                                child: Text(deliveryTime.time),
                              );
                            }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300],
                    width: 2,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Select payment method',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Icon(
                              Icons.account_balance_wallet,
                              color: Colors.orange[800],
                              size: 45.0,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.account_balance,
                              color: Colors.orange[800],
                              size: 45.0,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.credit_card,
                              color: Colors.orange[800],
                              size: 45.0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: FlatButton(
                  color: Colors.orange[800],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(5.0),
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "Pay",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.orange[800],
              size: 45.0,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_comfy,
              color: Colors.orange[800],
              size: 45.0,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.feedback,
              color: Colors.orange[800],
              size: 45.0,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.orange[800],
              size: 45.0,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.orange[800],
              size: 45.0,
            ),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
