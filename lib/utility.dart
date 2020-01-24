import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:first_app/main.dart';

//global olmalı
Widget urunlerWidget(BuildContext context,String _url , String _imageUrl, String _productName ,String _catagoryName )=> Stack(children: <Widget>[
      _mainContainer(context, _url,_imageUrl),
      _container(_productName,_url,context, _textStyle14, _edgeInsets332),
      _container(_catagoryName,_url,context, _textStyle14, _edgeInsets362)
],);


Widget headerText(String text) => Container(
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
Widget _container(String text,_url,BuildContext context, TextStyle _textStyle, EdgeInsets _edgeInsets) =>
    Container(
      padding: _edgeInsets,
      child: FlatButton(onPressed: () { 
        Navigator.pushNamed(context, _url);
       },
      child: Text(text, style: _textStyle)),
      alignment: Alignment.center,
    );

Widget imageAsset( String _url  ) => Image.asset( _url, scale: 3, alignment: Alignment.bottomCenter,);
Widget imageNetwork( String url ) => Image.network(url);
Widget _flatButton( BuildContext context, String _url , String _imageUrl) => FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, _url);
          }, 
           child: imageNetwork(_imageUrl)
           
          );

    Column pdfbutton( String url, String text ) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        FittedBox(child: IconButton(
             icon:  Image.asset('images/acrobat.png'),
             color: Colors.white, 
             tooltip: text,
             onPressed: () {
                // launch(url);
                launch(url);
                 //LaunchUrl(url: url).launchURL();
             },)),
          
         Flexible( fit: FlexFit.tight,
           child: RaisedButton(             
                color: Colors.white,
                child: RichText( text: new LinkTextSpan(
               style: null,
               url: url,
               text:  text),
               ), 
                 onPressed: () {
                 },       
        ),
        ),  
        ],)
      ],
    );
  }

   class LinkTextSpan extends TextSpan {
  LinkTextSpan({TextStyle style, String url, String text})
      : super(
      style: TextStyle(color: Colors.black, fontSize: 10),
      text: text ?? url,
      recognizer: new TapGestureRecognizer()
        ..onTap = () {
          launch(url);
        });
   }

final _textStyle14 = TextStyle(
  fontSize: 14,
  color: Colors.blue[700],);

final _textstyle26 = TextStyle(
        color: Colors.black87,
        fontSize: 26,);

final _edgeInsets332 = EdgeInsets.fromLTRB(10, 332, 10, 00);
final _edgeInsets362 = EdgeInsets.fromLTRB(10, 362, 10, 00);
final _edgeInsetsSymmetric = EdgeInsets.symmetric(horizontal: 0, vertical: 20);