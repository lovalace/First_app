import 'package:flutter/material.dart';
import 'package:first_app/main.dart';

class BuyukBalya extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _textBuyukBalyaMakinalari(),
              _stackOrkinos870(context),
              _stackOrkinos1270(context),
              Container(
                child: Image.asset('images/FSon.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  Stack _stackOrkinos1270(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/buyukbalya");              
            },
            child: Image.asset(
              'images/Orkinos.jpg',
              scale: 3,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'Orkinos 1270',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 362, 10, 00),
          child: Text(
            'Büyük Balya Makinaları',
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue[700],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }
  Stack _stackOrkinos870(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/buyukbalya");              
            },
            child: Image.asset(
              'images/Orkinos870X-1.jpg',
              scale: 3,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'Orkinos 870',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 362, 10, 00),
          child: Text(
            'Büyük Balya Makinaları',
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue[700],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }
    Container _textBuyukBalyaMakinalari() {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.grey[300],
      child: Text(
        'Büyük Balya Makinaları',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 26,
        ),
      ),
    );
  }
