import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:first_app/main.dart';

//global olmalı
Widget urunlerWidget(BuildContext context,String _url , String _imageUrl, String _productName ,String _catagoryName )=> Stack(children: <Widget>[
      _mainContainer(context, _url,_imageUrl),
      _container(_productName, _textStyle14, _edgeInsets332),
      _container(_catagoryName, _textStyle14, _edgeInsets362)
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
Widget _container(String text, TextStyle _textStyle, EdgeInsets _edgeInsets) =>
    Container(
      padding: _edgeInsets,
      child: Text(text, style: _textStyle),
      alignment: Alignment.center,
    );

Widget imageAsset( String _url  ) => Image.asset( _url, scale: 3, alignment: Alignment.bottomCenter,);
Widget imageNetwork( String url ) => Image.network("http://www.paksanmakina.com.tr/wp-content/uploads/2019/01/FSon.jpg");
Widget _flatButton( BuildContext context, String _url , String _imageUrl) => FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, _url);
         // String itemUrl = "/productdetails";
         //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>
         //   Orkinos870(),
         //   ));
          }, 
           child: imageAsset(_imageUrl)
          );

     RaisedButton pdfbutton( String url, String text ) {
    return RaisedButton(
      color: Colors.white,
      child: Align(
        alignment: Alignment.centerLeft,
          child:
           RichText(
                text: new LinkTextSpan(
                    style: TextStyle(color: Colors.red),
                    url: url,
                    text:  text),
                ),
      ), onPressed: () {},
      
    );
  }

   class LinkTextSpan extends TextSpan {
  LinkTextSpan({TextStyle style, String url, String text})
      : super(
      style: TextStyle(color: Colors.black,),
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