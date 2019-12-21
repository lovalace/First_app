import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var paksanMotto =
        'Paksan her geçen gün ürün yelpazesini geliştirmeye devam ediyor.Prizmatik balya makinası üretiminin yanı sıra, rulo balya makinaları, yatay ve dikey yem karma makinaları,kendi yürür ve sıra bağımsız silaj makinaları, toprak işleme makinaları ve silaj paketleme makinaları üretimlerini gerçekleştiriyor.';
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildStackAnaSayfa1(context),
              Container(
                padding: EdgeInsets.fromLTRB(00, 30, 00, 00),
                child: Text(
                  'Paksan\'ı Keşfedin!',
                  style: TextStyle(
                    
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],                    
                  ),
                ),
              ),
              Divider(),          
              anaSayfaKayanResimler(),
              Divider(),
              Container(
                child: Text(
                  'Paksan Makina',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              Container(
                child: Text(
                  paksanMotto,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[900],
                  ),
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage('images/Ciftlik.png'),
                ),
              ),
              Container(
                child: Text(
                  'Verimli Üretim',
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
                child: Image.asset(
                  'images/Makina1.png',
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
                child: Image.asset(
                  'images/Ciftlik2.png',
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
                child: Image.asset(
                  'images/Makina2.png',
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
                      TextSpan(text: '1970', style: TextStyle(fontWeight: FontWeight.bold,),),
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
                      TextSpan(text: '1990', style: TextStyle(fontWeight: FontWeight.bold,),),
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
                      TextSpan(text: '2000', style: TextStyle(fontWeight: FontWeight.bold,),),
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
                      TextSpan(text: '2010', style: TextStyle(fontWeight: FontWeight.bold,),),
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
                      TextSpan(text: '2019', style: TextStyle(fontWeight: FontWeight.bold,),),
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
                child: Image.asset(
                  'images/Paksan6Kita.gif',
                ),
              ),
              Container(
                child: Image.asset(
                  'images/FSon.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  SizedBox anaSayfaKayanResimler() {
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
            // Image.asset('images/Orkinos.jpg'),
            AssetImage('images/Orkinos.jpg',),            
            AssetImage('images/ScorpionX.jpg'),
            AssetImage('images/Yabali.jpg'),
            AssetImage("images/PelicanYatay8m3.png"),
            AssetImage("images/Diamond31.png"),
          ],
        ));
  }

  Stack buildStackAnaSayfa1(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(height: 270,
          child: Image.asset('images/paksan1.gif',fit: BoxFit.fill),
      
        ),
        Container(
          padding: EdgeInsets.fromLTRB(70, 30, 10, 20),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: Text(
            "Paksan Makina",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(72, 55, 10, 20),
          child: Text(
            "Yarım Asırlık Tecrübe,",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(72, 70, 10, 20),
          child: Text(
            "Geniş Servis Ağı,",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(72, 85, 10, 20),
          child: Text(
            "6 Kıtaya İhracat",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(72, 97, 10, 20),
          child: RaisedButton(
            child: Text("Daha Fazlası"),
            color: Color.fromARGB(180, 255, 116, 0),
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, "/products");
            },
          ),
        ),
      ],
    );
  }
}
