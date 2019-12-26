//import 'dart:js';

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
              _headerText("Büyük Balya Makinaları"),
              _urunlerWidget(context, "/buyukbalya","images/Orkinos.jpg", "Orkinos 1270", "Büyük Balya Makinaları"),
              _urunlerWidget(context, "/buyukbalya","images/Orkinos870X-1.jpg", "Orkinos 870", "Büyük Balya Makinaları"),
              _imageAsset('images/FSon.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _urunlerWidget(BuildContext context,String _url , String _imageUrl, String _productName ,String _catagoryName )=> Stack(children: <Widget>[
      _mainContainer(context, _url,_imageUrl),
      _container(_productName, _textStyle14, _edgeInsets332),
      _container(_catagoryName, _textStyle14, _edgeInsets362)
],);


Widget _headerText(String text) => Container(
  padding: _edgeInsetsSymmetric,
  color: Colors.grey[300],
  child: Text(text, textAlign: TextAlign.center,style: _textstyle26),
);

Widget _mainContainer( BuildContext context, String _url , String _imageUrl) => Stack(
 children: <Widget>[
      Container(
         padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
     child: _flatButton(context,_url,_imageUrl ),
      ),
     ]
);
Widget _container(String text, TextStyle _textStyle, EdgeInsets _edgeInsets) =>
    Container(
      padding: _edgeInsets,
      child: Text(text, style: _textStyle),
      alignment: Alignment.center,
    );

Widget _imageAsset( String _url  ) => Image.asset( _url, scale: 3,);
Widget _flatButton( BuildContext context, String _url , String _imageUrl) => FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, _url);
          }, 
           child: _imageAsset(_imageUrl)
          );
final _textStyle14 = TextStyle(
  fontSize: 14,
  color: Colors.blue[700],);

final _textstyle26 = TextStyle(
        color: Colors.black87,
        fontSize: 26,);

final _edgeInsets332 = EdgeInsets.fromLTRB(10, 332, 10, 00);
final _edgeInsets362 = EdgeInsets.fromLTRB(10, 362, 10, 00);
final _edgeInsetsSymmetric = EdgeInsets.symmetric(horizontal: 0, vertical: 20);