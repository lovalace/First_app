import 'package:flutter/material.dart';
import 'package:first_app/main.dart';

class Products extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _stackBuyukBalya(context),
              _stackKucukBalya(context),
              _stackYatayYem(context),
              _stackDikeyYem(context),
              _stackSilaj(context),
              _stackCayirBicme(context),
              _stackOtToplama(context),
              Container(
                child: Image.asset('images/FSon.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stack _stackBuyukBalya(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/products");              
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
            'BÜYÜK BALYA MAKİNALARI',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackOtToplama(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, "/products");
              },
              child: Image.asset('images/KirlangicKapak.jpg', scale: 3)),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'OT TOPLAMA',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackSilaj(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/products");
            },
            child: Image.asset('images/ScorpionX.jpg', scale: 3),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'SİLAJ EKİPMANLARI',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackCayirBicme(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/products");
            },
            child: Image.asset('images/cayirbicme.jpg', scale: 3),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'ÇAYIR BİÇME',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackYatayYem(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/products");
            },
            child: Image.asset('images/yatayyem.jpg', scale: 3),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'YATAY YEM KIRMA MAKİNALARI',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackDikeyYem(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/products");
            },
            child: Image.asset('images/Diamond3X-1.jpg', scale: 3),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'DİKEY YEM KIRMA MAKİNALARI',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackKucukBalya(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/products");
            },
            child: Image.asset('images/Yabali.jpg', scale: 3),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'KÜÇÜK BALYA MAKİNALARI',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }
}
