import 'package:flutter/material.dart';
import 'package:first_app/main.dart';

class AboutUs extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _stackAboutUs(),
              _ctText1(),
              _ctText2(),
              _ctText7(),
              _ctText3(),
              Divider(),
              _ctText4(),
              _ctText5(),
              _ctText6(),
                _ctImageSayfaSonu(),
            ],
          ),
        ),
      ),
    );
  }

  Container _ctImageSayfaSonu() {
    return Container(
        padding: EdgeInsets.fromLTRB(00, 25, 00, 00),
        child: Image.asset('images/FSon.jpg',),
      );
  }
  Container _ctText7() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 00),
      child: Text(
        'Paksan her geçen gün ürün yelpazesini geliştirmeye devam etmektedir. Prizmatik balya makinası üretiminin yanı sıra, rulo balya makinaları, yatay ve dikey yem karma makinaları, kendi yürür ve sıra bağımsız silaj makinaları, toprak işleme makinaları, silaj paketleme makinaları üretimlerini de bünyesine katmış bulunmaktadır.',
        style: TextStyle(
          fontSize: 14,
          wordSpacing: 0.5,
          letterSpacing: 1,
          height: 1.9,
          color: Colors.grey[600],
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }
  Container _ctText6() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 28, 10, 00),
      // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
      child: Text(
        'tüm çalışmalarda güncel, kabul görmüş bilgi işlem yazılımlarından faydalanmak için yatırımlarına hız kesmeden devam etmektedir. Toplamda 26.000 m2 bulan üretim tesislerinde yatay ve dikey işleme merkezleri, CNC ve yarı otomatik tornalar, freze, broş, azdırma, robot kaynak makinaları, robot abgand, CNC lazer kesim, eksantrik ve hidrolik pres gibi oldukça geniş bir tezgah parkına sahiptir.',
        style: TextStyle(
          fontSize: 14,
          wordSpacing: 0.5,
          letterSpacing: 1,
          height: 1.9,
          color: Colors.grey[600],
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }

  Container _ctText5() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 28, 10, 00),
      child: Text(
        'Paksan ürünlerinde müşteri memnuniyetini arttırmak, sorunsuz, dayanıklı ve güçlü makinalar üretebilmek, üretim ve maliyeti azaltmak, uygulanabilir yeni teknolojileri kullanmak amacıyla araştırma ve geliştirme faaliyetlerine oldukça önem vermektedir. Müşterilerine mükemmel ürünler ve hizmetler sunabilmek amacıyla en son teknolojik gelişmeleri üretimde kullanmak,',
        style: TextStyle(
          fontSize: 14,
          wordSpacing: 0.5,
          letterSpacing: 1,
          height: 1.9,
          color: Colors.grey[600],
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }

  Container _ctText4() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 00),
      child: Text(
        'Teknolojimizi Keşfedin',
        style: TextStyle(
          fontSize: 32,
          wordSpacing: 0.5,
          letterSpacing: 1,
          height: 1.9,
          color: Colors.grey[600],
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }

  Container _ctText3() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 00),
      child: Text(
        'Paksan, Türkiye genelinde bulunan geniş bayi ve servis ağı sayesinde doğudan batıya, kuzeyden güneye tüm müşterilerine en kısa sürede ulaşabilmektedir. Bugün 6 kıtaya ihracat yapan Paksan Türkiye’de ve dünyada yatırımlarına hız kesmeden devam etmektedir.',
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[600],
          wordSpacing: 0.5,
          letterSpacing: 1,
          height: 1.9,
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }

  Container _ctText2() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 00),
      child: Text(
        '1970 yılında Özhan Pak ve ortakları tarafından kurulmuş olan Paksan Makina bugün Türkiye’nin ve dünyanın en önemli balya makinası üreticileri arasında yer almaktadır. Paksan toplamda 21.000 m2 kapalı toplam 62.000 m2’yi bulan üretim tesislerinde, robotlar, modern CNC tezgahları, son model lazer kesim makinaları ve en gelişmiş çizim programları gibi son teknoloji imkanlarını kullanarak dünya standartlarında makina üretmektedir.',
        style: TextStyle(
          fontSize: 14,
          wordSpacing: 0.5,
          letterSpacing: 1,
          height: 1.9,
          color: Colors.grey[600],
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }

  Container _ctText1() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 00),
      child: Text(
        '6 kıtaya ihracat yapan Paksan Türkiye’de ve dünyada yatırımlarına hız kesmeden devam ediyor.',
        style: TextStyle(
          fontSize: 32,
          wordSpacing: 0.5,
          letterSpacing: 1,
          height: 1.2,
          color: Colors.grey[600],
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }

  Stack _stackAboutUs() {
    return Stack(
      children: <Widget>[
        Container(
          // padding: EdgeInsets.fromLTRB(0, 0, 00, 20),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: Image.asset(
            'images/tarla.jpg',
            scale: 1,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 00),
          child: Image.asset('images/PAKSAN.png', scale: 0.63),
        ),
      ],
    );
  }
}
//
