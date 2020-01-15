import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'constants.dart';

class BayiGirisi extends StatelessWidget {
  final TextEditingController sifre = new TextEditingController();

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
                _textBayiGirisi(),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                      'Bu içerik parola ile korunmaktadır. Görmek için lütfen aşağı parolanızı girin:'),
                ),
                Container(
                  child: TextField(
                    controller: sifre,
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white10,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Şifrenizi Giriniz'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(00, 10, 00, 00),
                  child: RaisedButton(
                    child: Text("GÖNDER"),
                    color: Color.fromARGB(180, 255, 116, 0),
                    textColor: Colors.white,
                    onPressed: () {
                      sifre.text == kBayiSifre
                          ? Navigator.pushNamed(context, "/bayigirisipdf")
                          : print('Şifre Yanlış');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _textBayiGirisi() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.white,
      child: Text(
        'BAYİ GİRİŞİ',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
    );
  }
}
