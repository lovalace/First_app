import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';


class TeknikSartnameler extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _textTeknikSartnameler(kTextTeknikSartnameler),
                buttonDigerUrunlerimiz(kButton1TextTeknikS,(){Navigator.pushNamed(context, "/tekniksartnamelerdigerurunlerimiz");}),
                buttonDigerUrunlerimiz(kButton2TextTeknikS,(){Navigator.pushNamed(context, "/tekniksartnamelersuper8002");}),
                buttonDigerUrunlerimiz(kButton3TextTeknikS,(){Navigator.pushNamed(context, "/tekniksartnamelersuperyunusbalyamakinesi");}),
                buttonDigerUrunlerimiz(kButton4TextTeknikS,(){Navigator.pushNamed(context, "/tekniksartnameleryemkarmamakinesi");}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonDigerUrunlerimiz(String buttonText,Function function) {
    return RaisedButton(
      color: Colors.white,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          buttonText,
        ),
      ),
      onPressed: function,
    );
  }


  Container _textTeknikSartnameler(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.white,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
    );
  }
}
