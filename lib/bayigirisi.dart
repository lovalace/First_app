import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'constants.dart';

class BayiGirisi extends StatelessWidget {
  final TextEditingController sifre = new TextEditingController();
  
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
                _textBayiGirisi(),
                Container(
                  child: Text(
                      'Bu içerik parola ile korunmaktadır. Görmek için lütfen aşağı parolanızı girin:'),
                ),
                Container(
                  child: TextField(
                      controller: sifre,
                      obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey,
                        filled: true,
                        border: InputBorder.none,
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
                        sifre.text  == kBayiSifre ? Navigator.pushNamed(context, "/bayigirisipdf") : print('Şifre Yanlış');                       
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
      color: Colors.grey[300],
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
