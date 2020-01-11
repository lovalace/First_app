//import 'dart:js';

import 'dart:convert';

import 'package:first_app/data.dart';
import 'package:first_app/productlist.dart';
import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/utility.dart' as utility;

class BuyukBalya extends StatelessWidget {
  Widget build(BuildContext context) {
  return _scaffold(context, _products, 0); //0 büyük balya
  }
}

class KucukBalya extends StatelessWidget {
  Widget build(BuildContext context) {
  return _scaffold(context, _products, 1); // 1 küçük balya
  }
}

class YatayYemKarmma extends StatelessWidget {
  Widget build(BuildContext context) {
  return _scaffold(context, _products, 2); // 2 yatay yem karma
  }
}

class DikeyYemKarma extends StatelessWidget {
  Widget build(BuildContext context) {
  return _scaffold(context, _products, 3); //3 dikey yem karma
  }
}

class Silaj extends StatelessWidget {
  Widget build(BuildContext context) {
    return _scaffold(context, _products, 4); //4 silaj
  }
}
 var decode = jsonDecode(allProducts);
 var _products = ProductsList.fromJson(decode);

class CayirBicme extends StatelessWidget {
  Widget build(BuildContext context) {
     return _scaffold(context, _products, 5); //5 çayır biçme
  }
}

class OtToplama extends StatelessWidget {
  Widget build(BuildContext context) {
    return _scaffold(context, _products, 6); //6 ot toplama
  }
}

Widget _scaffold( BuildContext context, ProductsList _products, int _itemindex ) =>Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            getWidgets(context, _products, _itemindex)
            ],
          ),
        ),
      ),
    );

   Widget getWidgets(BuildContext context,ProductsList _products, int _itemindex)
  {

    List<Widget> list = new List<Widget>();

    list.add(utility.headerText(_products.product[_itemindex].headerText));
    for(var item in _products.product[_itemindex].subProduct){ 
       list.add(utility.urunlerWidget(context, item.url, item.imageUrl, item.productName,  _products.product[_itemindex].categoryName));
    }
    list.add(SizedBox(height: 100,));
    
    list.add(utility.imageAsset('images/FSon.jpg'));

    return new Column(children: list, crossAxisAlignment: CrossAxisAlignment.stretch,);

  }