import 'package:flutter/material.dart';
import 'package:first_app/main.dart';

class AboutUs extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _stackAboutUs(),
              _container('6 kıtaya ihracat yapan Paksan Türkiye’de ve dünyada yatırımlarına hız kesmeden devam ediyor.', _textStyle32),
              _container('1970 yılında Özhan Pak ve ortakları tarafından kurulmuş olan Paksan Makina bugün Türkiye’nin ve dünyanın en önemli balya makinası üreticileri arasında yer almaktadır. Paksan toplamda 21.000 m2 kapalı toplam 62.000 m2’yi bulan üretim tesislerinde, robotlar, modern CNC tezgahları, son model lazer kesim makinaları ve en gelişmiş çizim programları gibi son teknoloji imkanlarını kullanarak dünya standartlarında makina üretmektedir.', _textStyle14),
              _container('Paksan her geçen gün ürün yelpazesini geliştirmeye devam etmektedir. Prizmatik balya makinası üretiminin yanı sıra, rulo balya makinaları, yatay ve dikey yem karma makinaları, kendi yürür ve sıra bağımsız silaj makinaları, toprak işleme makinaları, silaj paketleme makinaları üretimlerini de bünyesine katmış bulunmaktadır.', _textStyle14),
              _container('Paksan, Türkiye genelinde bulunan geniş bayi ve servis ağı sayesinde doğudan batıya, kuzeyden güneye tüm müşterilerine en kısa sürede ulaşabilmektedir. Bugün 6 kıtaya ihracat yapan Paksan Türkiye’de ve dünyada yatırımlarına hız kesmeden devam etmektedir.', _textStyle14),
              Divider(),
              _container('Teknolojimizi Keşfedin', _textStyle32),
              _container('Paksan ürünlerinde müşteri memnuniyetini arttırmak, sorunsuz, dayanıklı ve güçlü makinalar üretebilmek, üretim ve maliyeti azaltmak, uygulanabilir yeni teknolojileri kullanmak amacıyla araştırma ve geliştirme faaliyetlerine oldukça önem vermektedir. Müşterilerine mükemmel ürünler ve hizmetler sunabilmek amacıyla en son teknolojik gelişmeleri üretimde kullanmak,', _textStyle14),
              _container('tüm çalışmalarda güncel, kabul görmüş bilgi işlem yazılımlarından faydalanmak için yatırımlarına hız kesmeden devam etmektedir. Toplamda 26.000 m2 bulan üretim tesislerinde yatay ve dikey işleme merkezleri, CNC ve yarı otomatik tornalar, freze, broş, azdırma, robot kaynak makinaları, robot abgand, CNC lazer kesim, eksantrik ve hidrolik pres gibi oldukça geniş bir tezgah parkına sahiptir.', _textStyle14),
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
      child: Image.network('https://paksan.bandirmawebtasarim.net/images/FSon.jpg',
      ),
    );
  }

  Stack _stackAboutUs() {
    return Stack(
      children: <Widget>[
        Container(
          child: Image.network(
            'https://paksan.bandirmawebtasarim.net/images/tarla.jpg',
            scale: 1,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 00),
          child: Image.network('https://paksan.bandirmawebtasarim.net/images/PAKSAN.png', scale: 0.90,),
        ),
      ],
    );
  }
}

Widget _container( String text , TextStyle _textStyle ) => Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 00),
      child: Text( text,
      style: _textStyle),
      alignment: Alignment.centerLeft,
    );



final _textStyle32 = TextStyle(
  fontSize: 32,
  wordSpacing: 0.5,
  letterSpacing: 1,
  height: 1.2,
  color: Colors.grey[600],
);

final _textStyle14 = TextStyle(
  fontSize: 14,
  wordSpacing: 0.5,
  letterSpacing: 1,
  height: 1.2,
  color: Colors.grey[600],
);
