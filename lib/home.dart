import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
      key: new Key("home"),
      endDrawer: NewDrawer(),
      appBar: NewAppBarNoBack(),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  anaSayfaKayanResimler1(context),
                  Container(
                    child: Text(
                      kTextPaksaniKesfet,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                  Divider(),
                  anaSayfaKayanResimler2(context),
                ],
              ),
              Divider(),
              Container(
                child: Text(
                  kTextPaksanMakina,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              Container(
                child: Text(
                  kTextpaksanMotto,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[900],
                  ),
                ),
              ),
              Container(
                child: Image(
                  image: NetworkImage(kAssetCiftlik),
                ),
              ),
              Container(
                child: Text(
                  kTextVerimliUretim,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Zamandan Tasarruf Etmeniz,',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Veriminizi arttırmanız için çalışıyoruz',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                child: Image.network(
                  'https://paksan.bandirmawebtasarim.net/images/Makina1.png',
                ),
               


              ),
              Container(
                child: Text(
                  'Yüksek Teknoloji',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Uygulanabilir yeni teknolojiler;',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'araştırma ve geliştirme faaliyetleri',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'önceliğimiz.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                child: Image.network(
                  'https://paksan.bandirmawebtasarim.net/images/Ciftlik2.png',
                ),
              ),
              Container(
                child: Text(
                  'Çok Amaçlı',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[900],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Kullanım',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[900],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Tarlanızdan, çiftliğinize kadar tüm',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'üretimlerinizde geniş bayi ağımızla',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'yanınızdayız.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                child: Image.network(
                  'https://paksan.bandirmawebtasarim.net/images/Makina2.png',
                ),
              ),
              Container(
                child: Text(
                  'Geniş Ürün Yelpazesi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[900],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Sorunsuz, dayanıklı, güçlü ve geniş',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                child: Text(
                  'yelpazeli servis ağı yaygın ürün modelleri yapıyoruz.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.fromLTRB(00, 10, 00, 00),
                alignment: Alignment.centerLeft,
                child: Text(
                  //serüveni bolt olsun
                  '  Paksan’ın Serüveni',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 32,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 00, 00),
                // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.orange[900],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '1970',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ', Paksan Makina’nın Kuruluşu.',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 00, 00),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.orange[900],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '1990',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ', İlk Balya Makinasının Üretilmesi.',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 00, 00),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.orange[900],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '2000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ', Paksan Makina Olarak İlk İhracatımızı Gerçekleştirdik.',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 00, 00),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.orange[900],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '2010',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: ', Yılında Yeni Üretim Tesisimizi Yaptık.',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 00, 00),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.orange[900],
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '2019',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ', Yılında da Organize Üretim Tesisimizi Tamamladık.',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ),
              ),
              Divider(),
              Divider(),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Geniş Bayi Ağı,',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  '6 Kıtaya İhracat',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Geniş servis ve bayi ağınıa sahip Paksan Makina; 6 kıtada',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'sayısız ülkeye ihracat yapmaktadır.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                child: Image.network(
                  'https://paksan.bandirmawebtasarim.net/images/Paksan6Kita.gif',
                ),
              ),
              Container(
                child: Image.network(
                  'https://paksan.bandirmawebtasarim.net/images/FSon.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox anaSayfaKayanResimler2(context) {
    return SizedBox(
        height: 300.0,
        width: 325.0,
        child: Carousel(
          autoplay: true,
          dotSize: 2,
          borderRadius: true,
          dotBgColor: Colors.white,
          dotColor: Colors.grey,
          dotIncreasedColor: Colors.red[300],
          dotIncreaseSize: 6,
          animationDuration: Duration(seconds: 3),
          images: [
            GestureDetector(
              child: Image.network('https://paksan.bandirmawebtasarim.net/images/Orkinos.jpg'),
              onTap: () {
                Navigator.pushNamed(context, "/products");
              },
            ),
            GestureDetector(
              child: Image.network('https://paksan.bandirmawebtasarim.net/images/ScorpionX.jpg'),
              onTap: () {
                Navigator.pushNamed(context, "/products");
              },
            ),
            GestureDetector(
              child: Image.network('https://paksan.bandirmawebtasarim.net/images/Yabali.jpg'),
              onTap: () {
                Navigator.pushNamed(context, "/products");
              },
            ),
            GestureDetector(
              child: Image.network('https://paksan.bandirmawebtasarim.net/images/PelicanYatay8m3.png'),
              onTap: () {
                Navigator.pushNamed(context, "/products");
              },
            ),
            GestureDetector(
              child: Image.network('https://paksan.bandirmawebtasarim.net/images/Diamond31.png'),
              onTap: () {
                Navigator.pushNamed(context, "/products");
              },
            ),
          ],
        ));
  }

  SizedBox anaSayfaKayanResimler1(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: 325.0,
      child: Carousel(
        autoplay: true,
        dotSize: 2,
        borderRadius: true,
        dotBgColor: Colors.white,
        dotColor: Colors.grey,
        dotIncreasedColor: Colors.red[300],
        dotIncreaseSize: 6,
        animationDuration: Duration(seconds: 8),
        images: [
          _stackHomePage1(context),
          _stackHomePage2(context),
          _stackHomePage3(context),
          _stackHomePage4(context),
          _stackHomePage5(context),
        ],
      ),
    );
  }

  Stack _stackHomePage5(BuildContext context) {
    return _stackHomePage(
      context: context,
      imageName: 'images/samanbalya.gif',
      text1: "Balyada",
      textStyle1: _textStyleSmall(),
      geometryText1: EdgeInsets.fromLTRB(10, 30, 10, 20),
      text2: "En İyisini",
      textStyle2: _textStyleSmall(),
      geometryText2: EdgeInsets.fromLTRB(10, 45, 10, 20),
      text3: "İstiyorsan",
      textStyle3: _textStyleSmall(),
      geometryText3: EdgeInsets.fromLTRB(10, 60, 10, 20),
      text4: "PAKSAN",
      textStyle4: _textStyleBigNBold(),
      geometryText4: EdgeInsets.fromLTRB(10, 75, 10, 20),
      onTap: () {
        Navigator.pushNamed(context, "/products");
      },
      geometryText5: EdgeInsets.fromLTRB(10, 97, 10, 20),
    );
  }

  Stack _stackHomePage4(BuildContext context) {
    return _stackHomePage(
      context: context,
      imageName: 'images/silaj.gif',
      text1: "Silajda",
      textStyle1: _textStyleSmall(),
      geometryText1: EdgeInsets.fromLTRB(10, 15, 10, 20),
      text2: "En İyisini",
      textStyle2: _textStyleSmall(),
      geometryText2: EdgeInsets.fromLTRB(10, 30, 10, 20),
      text3: "İstiyorsan",
      textStyle3: _textStyleSmall(),
      geometryText3: EdgeInsets.fromLTRB(10, 45, 10, 20),
      text4: "PAKSAN",
      textStyle4: _textStyleBigNBold(),
      geometryText4: EdgeInsets.fromLTRB(10, 60, 10, 20),
      onTap: () {
        Navigator.pushNamed(context, "/products");
      },
      geometryText5: EdgeInsets.fromLTRB(10, 82, 10, 20),
    );
  }

  Stack _stackHomePage3(BuildContext context) {
    return _stackHomePage(
      context: context,
      imageName: 'images/yemkarmasol.gif',
      text1: "Yem Karmada",
      textStyle1: _textStyleSmall(),
      geometryText1: EdgeInsets.fromLTRB(10, 15, 10, 20),
      text2: "En İyisini",
      textStyle2: _textStyleSmall(),
      geometryText2: EdgeInsets.fromLTRB(10, 30, 10, 20),
      text3: "İstiyorsan",
      textStyle3: _textStyleSmall(),
      geometryText3: EdgeInsets.fromLTRB(10, 45, 10, 20),
      text4: "PAKSAN",
      textStyle4: _textStyleBigNBold(),
      geometryText4: EdgeInsets.fromLTRB(10, 60, 10, 20),
      onTap: () {
        Navigator.pushNamed(context, "/products");
      },
      geometryText5: EdgeInsets.fromLTRB(10, 82, 10, 20),
    );
  }

  Stack _stackHomePage2(BuildContext context) {
    return _stackHomePage(
      context: context,
      imageName: 'images/traktor.jpg',
      text1: "Balyada",
      textStyle1: _textStyleSmall(),
      geometryText1: EdgeInsets.fromLTRB(10, 45, 10, 20),
      text2: "En İyisini",
      textStyle2: _textStyleSmall(),
      geometryText2: EdgeInsets.fromLTRB(10, 60, 10, 20),
      text3: "İstiyorsan",
      textStyle3: _textStyleSmall(),
      geometryText3: EdgeInsets.fromLTRB(10, 75, 10, 20),
      text4: "PAKSAN",
      textStyle4: _textStyleBigNBold(),
      geometryText4: EdgeInsets.fromLTRB(10, 90, 10, 20),
      onTap: () {
        Navigator.pushNamed(context, "/products");
      },
      geometryText5: EdgeInsets.fromLTRB(10, 112, 10, 20),
    );
  }

  Stack _stackHomePage1(BuildContext context) {
    return _stackHomePage(
      context: context,
      imageName: 'images/paksan1.gif',
      text1: "Paksan Makina",
      textStyle1: _textStyleBigNBold(),
      geometryText1: EdgeInsets.fromLTRB(70, 30, 10, 20),
      text2: "Yarım Asırlık Tecrübe,",
      textStyle2: _textStyleSmall(),
      geometryText2: EdgeInsets.fromLTRB(72, 55, 10, 20),
      text3: "Geniş Servis Ağı,",
      textStyle3: _textStyleSmall(),
      geometryText3: EdgeInsets.fromLTRB(72, 70, 10, 20),
      text4: "6 Kıtaya İhracat",
      textStyle4: _textStyleSmall(),
      geometryText4: EdgeInsets.fromLTRB(72, 85, 10, 20),
      onTap: () {
        Navigator.pushNamed(context, "/products");
      },
      geometryText5: EdgeInsets.fromLTRB(72, 97, 10, 20),
    );
  }

  Stack _stackHomePage({
    BuildContext context,
    String imageName,
    String text1,
    TextStyle textStyle1,
    EdgeInsetsGeometry geometryText1,
    String text2,
    TextStyle textStyle2,
    EdgeInsetsGeometry geometryText2,
    String text3,
    TextStyle textStyle3,
    EdgeInsetsGeometry geometryText3,
    String text4,
    TextStyle textStyle4,
    EdgeInsetsGeometry geometryText4,
    Function onTap,
    EdgeInsetsGeometry geometryText5,
  }) {
    return Stack(
      children: <Widget>[
        Container(
          height: 270,
          child: Image.asset(imageName, fit: BoxFit.fill),
          // FadeInImage.assetNetwork(
          //   placeholder: 'images/loading.gif',
          //   image: imageName,
          //),


        ),
        Container(
          padding: geometryText1,
          child: Text(
            text1,
            style: textStyle1,
          ),
        ),
        Container(
          padding: geometryText2,
          child: Text(
            text2,
            style: textStyle2,
          ),
        ),
        Container(
          padding: geometryText3,
          child: Text(
            text3,
            style: textStyle3,
          ),
        ),
        Container(
          padding: geometryText4,
          child: Text(
            text4,
            style: textStyle4,
          ),
        ),
        Container(
          padding: geometryText5,
          child: RaisedButton(
            child: Text("Daha Fazlası"),
            color: Color.fromARGB(180, 255, 116, 0),
            textColor: Colors.white,
            onPressed: onTap,
          ),
        ),
      ],
    );
  }

  TextStyle _textStyleSmall() {
    return TextStyle(
      fontSize: 14,
      color: Colors.white,
    );
  }

  TextStyle _textStyleBigNBold() {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}
