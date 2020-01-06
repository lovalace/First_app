import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

class DeneyRaporlari extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _textDeneyRaporlari(kTextDeneyRaporlari),
                buttonDeneyRaporlari(kButton1TextDeneyRaporlari,(){Navigator.pushNamed(context, "/deneyraporlaridigerurunlerimiz");}),
                buttonDeneyRaporlari(kButton2TextDeneyRaporlari,(){Navigator.pushNamed(context, "/deneyraporlarisuper8002");}),
                buttonDeneyRaporlari(kButton3TextDeneyRaporlari,(){Navigator.pushNamed(context, "/superyunusbalyamakinesi");}),
                buttonDeneyRaporlari(kButton4TextDeneyRaporlari,(){Navigator.pushNamed(context, "/yemkarmamakinesi");}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonDeneyRaporlari(String buttonText,Function function) {
    return RaisedButton(
      color: Colors.grey,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          buttonText,
        ),
      ),
      onPressed: function,
    );
  }


  Container _textDeneyRaporlari(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.grey[300],
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
