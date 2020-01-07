import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'constants.dart';
import 'iletisim.dart';

class NewsFromUs extends StatelessWidget {
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
                _textBizdenHaberler(),
                _stackBolum1(context),
                _stackBolum2(context),
                _stackBolum3(context),
                Container(
                  child: Image.asset('images/FSon.jpg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _textBizdenHaberler() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.grey[300],
      child: Text(
        'BİZDEN HABERLER',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
    );
  }

  Stack _stackBolum1(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(00, 02, 00, 00),
          child: Image.asset('images/konya-fuari.jpg'),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(00, 300, 00, 00),
          alignment: Alignment.centerLeft,
          child: Text('19-23 Mart 2019 Konya Fuar’ında Misafirimiz Olun'),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(00, 315, 00, 15),
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.access_time,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 02, 10, 00),
                // Container(padding:EdgeInsets.fromLTRB(left, top, right, bottom)
                child: Text('13 Şubat 2019'),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(00, 337, 00, 00),
          alignment: Alignment.centerLeft,
          child: Text(
              '19-23 Mart tarihlerinde düzenlenecek olan 2019 Konya Tarım Fuarı’nda tüm çiftçilerimizi  Paksan Makina standımıza bekliyoruz.'),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(00, 385, 00, 15),
          child: RaisedButton(
            child: Text("DEVAMINI OKU"),
            color: Color.fromARGB(180, 255, 116, 0),
            textColor: Colors.white,
            onPressed: () {
              LaunchUrl(url: kUrlLink1).launchURL();
            },
          ),
        ),
      ],
    );
  }

  Stack _stackBolum2(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(00, 02, 00, 00),
          child: Image.asset('images/foto1.jpeg'),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(00, 300, 00, 00),
          alignment: Alignment.centerLeft,
          child: Text('Paksan 2019 İzmir Fuar’ında'),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(00, 315, 00, 15),
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.access_time,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 02, 10, 00),
                // Container(padding:EdgeInsets.fromLTRB(left, top, right, bottom)
                child: Text('12 Şubat 2019'),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(00, 337, 00, 00),
          alignment: Alignment.centerLeft,
          child: Text(
              'İzmir Tarım fuarında standımıza göstermiş olduğunuz yoğun ilgi için teşekkür ederiz.'),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(00, 375, 00, 15),
          child: RaisedButton(
            child: Text("DEVAMINI OKU"),
            color: Color.fromARGB(180, 255, 116, 0),
            textColor: Colors.white,
            onPressed: () {
              LaunchUrl(url: kUrlLink2).launchURL();
            },
          ),
        ),
      ],
    );
  }

  Stack _stackBolum3(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(00, 02, 00, 00),
          child: Image.asset('images/paksansite.png'),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(00, 300, 00, 00),
          alignment: Alignment.centerLeft,
          child: Text('Yeni Sitemiz Yayında!'),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(00, 315, 00, 15),
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.access_time,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 02, 10, 00),
                // Container(padding:EdgeInsets.fromLTRB(left, top, right, bottom)
                child: Text('6 Şubat 2019'),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(00, 345, 00, 00),
          alignment: Alignment.centerLeft,
          child: Text(
              'Yeni sitemiz artık yayında. Paksan Makina hakkında her konuda haber ve duyurularımızı “bizden haberler” sayfamızdan takip edebilirsiniz.'),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(00, 395, 00, 15),
          child: RaisedButton(
            child: Text("DEVAMINI OKU"),
            color: Color.fromARGB(180, 255, 116, 0),
            textColor: Colors.white,
            onPressed: () {
              LaunchUrl(url: kUrlLink3).launchURL();
            },
          ),
        ),
      ],
    );
  }
}
