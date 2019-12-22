import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:url_launcher/url_launcher.dart';

class Kvkk extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _textKVKK(),
    Container(child: RaisedButton(
        onPressed: _launchURL,
        child: Text('DENEME URL'),
      ),
    ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _textKVKK() {
    return Container(
    //Burası hoşuma gitmedi incelemek lazım.10 olarak değil otomatik olarak getirtmek lazım
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    color: Colors.grey[300],
    child: Text(
      'KİŞİSEL VERİLERİN KORUNMASI',
      style: TextStyle(
        color: Colors.black,
        fontSize: 27,
      ),
    ),
  );
  }
}



_launchURL() async {
  const url = 'https://google.com';
  if (await canLaunch(url)) {
    print("BAŞARIlI");
    await launch(url,forceWebView: true);

  } else {
    print("BAŞARISIZ");
    throw 'Could not launch $url';
  }
}