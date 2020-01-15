import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

class ZiraiKredilendirmeBelgeleri extends StatelessWidget {
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
                _textZiraiKredilendirmeBelgeleri(kTextZiraiKredilendirmeBelgeleri),
                buttonZiraiKredilendirmeBelgeleri(kButton1TextZiraiKredilendirme,(){Navigator.pushNamed(context, "/ziraikredilendirmedigerurunlerimiz");}),
                buttonZiraiKredilendirmeBelgeleri(kButton2TextZiraiKredilendirme,(){Navigator.pushNamed(context, "/ziraikredilendirmesupers8002");}),
                buttonZiraiKredilendirmeBelgeleri(kButton3TextZiraiKredilendirme,(){Navigator.pushNamed(context, "/ziraikredilendirmesuperyunus");}),
                buttonZiraiKredilendirmeBelgeleri(kButton4TextZiraiKredilendirme,(){Navigator.pushNamed(context, "/ziraikredilendirmeyemkarma");}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonZiraiKredilendirmeBelgeleri(String buttonText,Function function) {
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


  Container _textZiraiKredilendirmeBelgeleri(String text) {
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
