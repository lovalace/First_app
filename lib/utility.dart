import 'package:flutter/material.dart';
//import 'package:first_app/main.dart';

//global olmalı
Widget UrunlerWidget(BuildContext context,String _url , String _imageUrl, String _productName ,String _catagoryName )=> Stack(children: <Widget>[
      _mainContainer(context, _url,_imageUrl),
      _container(_productName, _textStyle14, _edgeInsets332),
      _container(_catagoryName, _textStyle14, _edgeInsets362)
],);


Widget HeaderText(String text) => Container(
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

Widget ImageAsset( String _url  ) => Image.asset( _url, scale: 3,);
Widget _flatButton( BuildContext context, String _url , String _imageUrl) => FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, _url);
          }, 
           child: ImageAsset(_imageUrl)
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


