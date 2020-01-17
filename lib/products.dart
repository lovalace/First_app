import 'package:first_app/data.dart';
import 'package:first_app/utility.dart';
import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Products extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _stackBuyukBalya(context),
              _stackKucukBalya(context),
              _stackYatayYem(context),
              _stackDikeyYem(context),
              _stackSilaj(context),
              _stackCayirBicme(context),
              _stackOtToplama(context),
              Container(
                child: Image.network('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stack _stackBuyukBalya(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/buyukbalya");
            },
            child: Image.network(
              'https://paksan.bandirmawebtasarim.net/images/Orkinos.jpg',
              scale: 3,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'BÜYÜK BALYA MAKİNALARI',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackOtToplama(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ottoplama");
              },
              child: Image.network('https://paksan.bandirmawebtasarim.net/images/KirlangicKapak.jpg', scale: 3)),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'OT TOPLAMA',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackSilaj(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/silaj");
            },
            child: Image.network('https://paksan.bandirmawebtasarim.net/images/ScorpionX.jpg', scale: 3),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'SİLAJ EKİPMANLARI',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackCayirBicme(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/cayirbicme");
            },
            child: Image.network('https://paksan.bandirmawebtasarim.net/images/cayirbicme.jpg', scale: 3),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'ÇAYIR BİÇME',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackYatayYem(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/yatayyemkarma");
            },
            child: Image.network('https://paksan.bandirmawebtasarim.net/images/yatayyem.jpg', scale: 3),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'YATAY YEM KARMA',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackDikeyYem(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/dikeyyemkarma");
            },
            child: Image.network('https://paksan.bandirmawebtasarim.net/images/Diamond3X-1.jpg', scale: 3),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'DİKEY YEM KARMA',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }

  Stack _stackKucukBalya(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 22, 10, 00),
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/kucukbalya");
            },
            child: Image.network('https://paksan.bandirmawebtasarim.net/images/Yabali.jpg', scale: 3),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 332, 10, 00),
          child: Text(
            'KÜÇÜK BALYA MAKİNALARI',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
  }
}

class Orkinos870 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
     endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages4lu(
                    'images/Orkinos870/1.jpg',
                    'images/Orkinos870/2.jpg',
                    'images/Orkinos870/3.jpg',
                    'images/Orkinos870/4.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "ORKİNOS 870",
                  style: _textstyle25,
                ),
                // Center(child: Text(pageID.toString())),
                // Center(child: Text(name)),
                Text(orkinos870),
                Text("Balya Yüksekliği: 70 cm"),
                Text("50 – 270 cm"),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos870.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn(
                        "ÖZELLİKLER", "4 İPLİ", "4 İPLİ H", "6 İPLİ", "6 İPLİ H"),
                    rows: [
                      _datarow("Balya Genişliği", "80", "80", "120", "120"),
                      _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270",
                          "50- 270"),
                      _datarow("Balya / Saat", "100", "130", "130", "150"),
                      _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                      _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                      _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                      _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                      _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                      _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik",
                          "4 Hidrolik", "4 Hidrolik"),
                      _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                      _datarow("İp Sayısı", "4", "4", "6", "6"),
                      _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                      _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan",
                          "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                      _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm",
                          "Çift Düğüm", "Çift Düğüm"),
                      _datarow("Rotor", "Helisel Rotor", "Helisel Rotor",
                          "Heliser Rotor", "Heliser Rotor"),
                      _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                      _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik",
                          "Hidrolik"),
                      _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                      _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                      _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                      _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                      _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon",
                          "Standart", "Standart"),
                      _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "Standart",
                          "Standart"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

class Orkinos1270 extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
       endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages4lu(
                    'images/Orkinos1270/1.jpg',
                    'images/Orkinos1270/2.jpg',
                    'images/Orkinos1270/3.jpg',
                    'images/Orkinos1270/4.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "ORKİNOS 1270",
                  style: _textstyle25,
                ),
                Text(orkinos1270),
                Text("Balya Yüksekliği: 70 cm"),
                Text("50 – 270 cm"),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn(
                        "ÖZELLİKLER", "4 İPLİ", "4 İPLİ H", "6 İPLİ", "6 İPLİ H"),
                    rows: [
                      _datarow("Balya Genişliği", "80", "80", "120", "120"),
                      _datarow("Balya Yüksekliği", "70", "70", "70", "70"),
                      _datarow("Balya Uzunluğu", "50-260", "50-260", "50- 270",
                          "50- 270"),
                      _datarow("Balya / Saat", "100", "130", "130", "150"),
                      _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                      _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                      _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                      _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                      _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                      _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik",
                          "4 Hidrolik", "4 Hidrolik"),
                      _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                      _datarow("İp Sayısı", "4", "4", "6", "6"),
                      _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                      _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan",
                          "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                      _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm",
                          "Çift Düğüm", "Çift Düğüm"),
                      _datarow("Rotor", "Helisel Rotor", "Helisel Rotor",
                          "Heliser Rotor", "Heliser Rotor"),
                      _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                      _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik",
                          "Hidrolik"),
                      _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                      _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                      _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                      _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                      _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon",
                          "Standart", "Standart"),
                      _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "Standart",
                          "Standart"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

class SuperS8002 extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
       endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages6li(
                    'images/SuperS8002/1.jpg',
                    'images/SuperS8002/2.jpg',
                    'images/SuperS8002/3.jpg',
                    'images/SuperS8002/4.jpg',
                    'images/SuperS8002/5.jpg',
                    'images/SuperS8002/6.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SÜPER S8002",
                  style: _textstyle25,
                ),
                Text(supers8002),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "ÖZELLİKLER", "2 İPLİ", "3 İPLİ", "3 İPLİ H"),
                    rows: [
                      _datarow4lu("Traktör Gücü", "50-60", "50-60", "55-70"),
                      _datarow4lu("Balya Ağırlığı - Saman", "20 - 25 kg",
                          "20 - 25 kg", "20 - 25 kg"),
                      _datarow4lu("Balya Ağırlığı - Ot", "25 - 35 kg",
                          "25 - 35 kg", "25 - 35 kg"),
                      _datarow4lu(
                          "Balya / Saat", "250 - 350", "250 - 350", "250 - 350"),
                      _datarow4lu("Tırmık Genişliği", "142", "142", "142"),
                      _datarow4lu("Hidrolik Toplayıcı Pistonu", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu(
                          "3. Destek Tekerİ", "Opsiyon", "Opsiyon", "Opsiyon"),
                      _datarow4lu("Haşpay Ünütesi", "Yok", "Yok", "Var"),
                      _datarow4lu(
                          "Balya Ölçüsü", "36 x 46", "36 x 46", "36 x 46"),
                      _datarow4lu("Strok Boyu ve Hızı", "65cm - 92 rpm",
                          "73cm - 92 rpm", "73cm - 92 rpm"),
                      _datarow4lu(
                          "Kuyruk Tipi", "212CStandart", "Standart", "Standart"),
                      _datarow4lu("Bağlama Gurubu", "2 İpli", "3 İpli", "3 İpli"),
                      _datarow4lu("Telli Bağlama Grubu", "Opsiyon", "Yok", "Yok"),
                      _datarow4lu("Bağlama Grubu Aydınlatması", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu("Bağlama Grubu Fanı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu(
                          "İş-Yol Konumu", "Hidrolik", "Hidrolik", "Hidrolik"),
                      _datarow4lu("Bağlama Sistemi Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu(
                          "Sol Yaba Güç Aktarımı", "Şaft", "Şaft", "Şaft"),
                      _datarow4lu(
                          "Sağ Yaba Güç Aktarımı", "Zincir", "Zincir", "Zincir"),
                      _datarow4lu("Toplayıcı Düzeneği Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu("İp Dolabı Kapasitesi", "6", "6", "6"),
                      _datarow4lu("Mekanik Balya Sayıcı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu("Dijital Balya Sayıcı", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

class SuperS8002E extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
       endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages6li(
                    'images/SuperS8002E/1.jpg',
                    'images/SuperS8002E/2.jpg',
                    'images/SuperS8002E/3.jpg',
                    'images/SuperS8002E/4.jpg',
                    'images/SuperS8002E/5.jpg',
                    'images/SuperS8002E/6.jpg'),

                SizedBox(
                  height: 10,
                ),
                Text(
                  "SÜPER S8002 E",
                  style: _textstyle25,
                ),
                Text(super8002E),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/S8002E.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "ÖZELLİKLER", "2 İPLİ", "3 İPLİ", "3 İPLİ H"),
                    rows: [
                      _datarow4lu("Traktör Gücü", "50-60", "50-60", "55-70"),
                      _datarow4lu("Balya Ağırlığı - Saman", "20 - 25 kg",
                          "20 - 25 kg", "20 - 25 kg"),
                      _datarow4lu("Balya Ağırlığı - Ot", "25 - 35 kg",
                          "25 - 35 kg", "25 - 35 kg"),
                      _datarow4lu(
                          "Balya / Saat", "250 - 350", "250 - 350", "250 - 350"),
                      _datarow4lu("Tırmık Genişliği", "142", "142", "142"),
                      _datarow4lu("Hidrolik Toplayıcı Pistonu", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu(
                          "3. Destek Tekerİ", "Opsiyon", "Opsiyon", "Opsiyon"),
                      _datarow4lu("Haşpay Ünütesi", "Yok", "Yok", "Var"),
                      _datarow4lu(
                          "Balya Ölçüsü", "36 x 46", "36 x 46", "36 x 46"),
                      _datarow4lu("Strok Boyu ve Hızı", "65cm - 92 rpm",
                          "73cm - 92 rpm", "73cm - 92 rpm"),
                      _datarow4lu(
                          "Kuyruk Tipi", "212CStandart", "Standart", "Standart"),
                      _datarow4lu("Bağlama Gurubu", "2 İpli", "3 İpli", "3 İpli"),
                      _datarow4lu("Telli Bağlama Grubu", "Opsiyon", "Yok", "Yok"),
                      _datarow4lu("Bağlama Grubu Aydınlatması", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu("Bağlama Grubu Fanı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu(
                          "İş-Yol Konumu", "Hidrolik", "Hidrolik", "Hidrolik"),
                      _datarow4lu("Bağlama Sistemi Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu(
                          "Sol Yaba Güç Aktarımı", "Şaft", "Şaft", "Şaft"),
                      _datarow4lu(
                          "Sağ Yaba Güç Aktarımı", "Zincir", "Zincir", "Zincir"),
                      _datarow4lu("Toplayıcı Düzeneği Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu("İp Dolabı Kapasitesi", "6", "6", "6"),
                      _datarow4lu("Mekanik Balya Sayıcı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu("Dijital Balya Sayıcı", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

class SuperS8002EDual1 extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
       endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/Super8002EDUAL/1.jpg',
                    'images/Super8002EDUAL/2.jpg',
                    'images/Super8002EDUAL/3.jpg',
                    'images/Super8002EDUAL/4.jpg',
                    'images/Super8002EDUAL/5.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SÜPER 8002E DUAL",
                  style: _textstyle25,
                ),
                Text(super8002EDual1),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("paksan.bandirmawebtasarim.net/images/SuperS8002-1.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "ÖZELLİKLER", "2 İPLİ", "3 İPLİ", "3 İPLİ H"),
                    rows: [
                      _datarow4lu("Traktör Gücü", "50-60", "50-60", "55-70"),
                      _datarow4lu("Balya Ağırlığı - Saman", "20 - 25 kg",
                          "20 - 25 kg", "20 - 25 kg"),
                      _datarow4lu("Balya Ağırlığı - Ot", "25 - 35 kg",
                          "25 - 35 kg", "25 - 35 kg"),
                      _datarow4lu(
                          "Balya / Saat", "250 - 350", "250 - 350", "250 - 350"),
                      _datarow4lu("Tırmık Genişliği", "142", "142", "142"),
                      _datarow4lu("Hidrolik Toplayıcı Pistonu", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu(
                          "3. Destek Tekerİ", "Opsiyon", "Opsiyon", "Opsiyon"),
                      _datarow4lu("Haşpay Ünütesi", "Yok", "Yok", "Var"),
                      _datarow4lu(
                          "Balya Ölçüsü", "36 x 46", "36 x 46", "36 x 46"),
                      _datarow4lu("Strok Boyu ve Hızı", "65cm - 92 rpm",
                          "73cm - 92 rpm", "73cm - 92 rpm"),
                      _datarow4lu(
                          "Kuyruk Tipi", "212CStandart", "Standart", "Standart"),
                      _datarow4lu("Bağlama Gurubu", "2 İpli", "3 İpli", "3 İpli"),
                      _datarow4lu("Telli Bağlama Grubu", "Opsiyon", "Yok", "Yok"),
                      _datarow4lu("Bağlama Grubu Aydınlatması", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu("Bağlama Grubu Fanı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu(
                          "İş-Yol Konumu", "Hidrolik", "Hidrolik", "Hidrolik"),
                      _datarow4lu("Bağlama Sistemi Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu(
                          "Sol Yaba Güç Aktarımı", "Şaft", "Şaft", "Şaft"),
                      _datarow4lu(
                          "Sağ Yaba Güç Aktarımı", "Zincir", "Zincir", "Zincir"),
                      _datarow4lu("Toplayıcı Düzeneği Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu("İp Dolabı Kapasitesi", "6", "6", "6"),
                      _datarow4lu("Mekanik Balya Sayıcı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu("Dijital Balya Sayıcı", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

class SuperS8002EDual2 extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/Super8002EDUAL2/1.jpg',
                    'images/Super8002EDUAL2/2.jpg',
                    'images/Super8002EDUAL2/3.jpg',
                    'images/Super8002EDUAL2/4.jpg',
                    'images/Super8002EDUAL2/5.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SÜPER 8002E DUAL 2",
                  style: _textstyle25,
                ),
                Text(super8002Dual2),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("paksan.bandirmawebtasarim.net/images/Super-8002-E-DUAL-2.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "ÖZELLİKLER", "2 İPLİ", "3 İPLİ", "3 İPLİ H"),
                    rows: [
                      _datarow4lu("Traktör Gücü", "50-60", "50-60", "55-70"),
                      _datarow4lu("Balya Ağırlığı - Saman", "20 - 25 kg",
                          "20 - 25 kg", "20 - 25 kg"),
                      _datarow4lu("Balya Ağırlığı - Ot", "25 - 35 kg",
                          "25 - 35 kg", "25 - 35 kg"),
                      _datarow4lu(
                          "Balya / Saat", "250 - 350", "250 - 350", "250 - 350"),
                      _datarow4lu("Tırmık Genişliği", "142", "142", "142"),
                      _datarow4lu("Hidrolik Toplayıcı Pistonu", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu(
                          "3. Destek Tekerİ", "Opsiyon", "Opsiyon", "Opsiyon"),
                      _datarow4lu("Haşpay Ünütesi", "Yok", "Yok", "Var"),
                      _datarow4lu(
                          "Balya Ölçüsü", "36 x 46", "36 x 46", "36 x 46"),
                      _datarow4lu("Strok Boyu ve Hızı", "65cm - 92 rpm",
                          "73cm - 92 rpm", "73cm - 92 rpm"),
                      _datarow4lu(
                          "Kuyruk Tipi", "212CStandart", "Standart", "Standart"),
                      _datarow4lu("Bağlama Gurubu", "2 İpli", "3 İpli", "3 İpli"),
                      _datarow4lu("Telli Bağlama Grubu", "Opsiyon", "Yok", "Yok"),
                      _datarow4lu("Bağlama Grubu Aydınlatması", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu("Bağlama Grubu Fanı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu(
                          "İş-Yol Konumu", "Hidrolik", "Hidrolik", "Hidrolik"),
                      _datarow4lu("Bağlama Sistemi Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu(
                          "Sol Yaba Güç Aktarımı", "Şaft", "Şaft", "Şaft"),
                      _datarow4lu(
                          "Sağ Yaba Güç Aktarımı", "Zincir", "Zincir", "Zincir"),
                      _datarow4lu("Toplayıcı Düzeneği Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu("İp Dolabı Kapasitesi", "6", "6", "6"),
                      _datarow4lu("Mekanik Balya Sayıcı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu("Dijital Balya Sayıcı", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

class SuperYunus extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/SuperYunus/1.jpg',
                    'images/SuperYunus/2.jpg',
                    'images/SuperYunus/3.jpg',
                    'images/SuperYunus/4.jpg',
                    'images/SuperYunus/5.jpg'),
                //images/SuperYunus/6.jpg
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SÜPER YUNUS",
                  style: _textstyle25,
                ),
                Text(superYunus),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("paksan.bandirmawebtasarim.net/images/SuperYunus.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "ÖZELLİKLER", "2 İPLİ", "3 İPLİ", "3 İPLİ H"),
                    rows: [
                      _datarow4lu("Traktör Gücü", "50-60", "50-60", "55-70"),
                      _datarow4lu("Balya Ağırlığı - Saman", "20 - 25 kg",
                          "20 - 25 kg", "20 - 25 kg"),
                      _datarow4lu("Balya Ağırlığı - Ot", "25 - 35 kg",
                          "25 - 35 kg", "25 - 35 kg"),
                      _datarow4lu(
                          "Balya / Saat", "250 - 350", "250 - 350", "250 - 350"),
                      _datarow4lu("Tırmık Genişliği", "142", "142", "142"),
                      _datarow4lu("Hidrolik Toplayıcı Pistonu", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu(
                          "3. Destek Tekerİ", "Opsiyon", "Opsiyon", "Opsiyon"),
                      _datarow4lu("Haşpay Ünütesi", "Yok", "Yok", "Var"),
                      _datarow4lu(
                          "Balya Ölçüsü", "36 x 46", "36 x 46", "36 x 46"),
                      _datarow4lu("Strok Boyu ve Hızı", "65cm - 92 rpm",
                          "73cm - 92 rpm", "73cm - 92 rpm"),
                      _datarow4lu(
                          "Kuyruk Tipi", "212CStandart", "Standart", "Standart"),
                      _datarow4lu("Bağlama Gurubu", "2 İpli", "3 İpli", "3 İpli"),
                      _datarow4lu("Telli Bağlama Grubu", "Opsiyon", "Yok", "Yok"),
                      _datarow4lu("Bağlama Grubu Aydınlatması", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu("Bağlama Grubu Fanı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu(
                          "İş-Yol Konumu", "Hidrolik", "Hidrolik", "Hidrolik"),
                      _datarow4lu("Bağlama Sistemi Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu(
                          "Sol Yaba Güç Aktarımı", "Şaft", "Şaft", "Şaft"),
                      _datarow4lu(
                          "Sağ Yaba Güç Aktarımı", "Zincir", "Zincir", "Zincir"),
                      _datarow4lu("Toplayıcı Düzeneği Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu("İp Dolabı Kapasitesi", "6", "6", "6"),
                      _datarow4lu("Mekanik Balya Sayıcı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu("Dijital Balya Sayıcı", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

class SuperYunus3Yabali extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/SuperYunus3Yabali/1.jpg',
                    'images/SuperYunus3Yabali/2.jpg',
                    'images/SuperYunus3Yabali/3.jpg',
                    'images/SuperYunus3Yabali/4.jpg',
                    'images/SuperYunus3Yabali/5.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SÜPER YUNUS 3 YABALI",
                  style: _textstyle25,
                ),
                Text(superYunusYabali),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("paksan.bandirmawebtasarim.net/images/SuperYUNUS3ABALI.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "ÖZELLİKLER", "2 İPLİ", "3 İPLİ", "3 İPLİ H"),
                    rows: [
                      _datarow4lu("Traktör Gücü", "50-60", "50-60", "55-70"),
                      _datarow4lu("Balya Ağırlığı - Saman", "20 - 25 kg",
                          "20 - 25 kg", "20 - 25 kg"),
                      _datarow4lu("Balya Ağırlığı - Ot", "25 - 35 kg",
                          "25 - 35 kg", "25 - 35 kg"),
                      _datarow4lu(
                          "Balya / Saat", "250 - 350", "250 - 350", "250 - 350"),
                      _datarow4lu("Tırmık Genişliği", "142", "142", "142"),
                      _datarow4lu("Hidrolik Toplayıcı Pistonu", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu(
                          "3. Destek Tekerİ", "Opsiyon", "Opsiyon", "Opsiyon"),
                      _datarow4lu("Haşpay Ünütesi", "Yok", "Yok", "Var"),
                      _datarow4lu(
                          "Balya Ölçüsü", "36 x 46", "36 x 46", "36 x 46"),
                      _datarow4lu("Strok Boyu ve Hızı", "65cm - 92 rpm",
                          "73cm - 92 rpm", "73cm - 92 rpm"),
                      _datarow4lu(
                          "Kuyruk Tipi", "212CStandart", "Standart", "Standart"),
                      _datarow4lu("Bağlama Gurubu", "2 İpli", "3 İpli", "3 İpli"),
                      _datarow4lu("Telli Bağlama Grubu", "Opsiyon", "Yok", "Yok"),
                      _datarow4lu("Bağlama Grubu Aydınlatması", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu("Bağlama Grubu Fanı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu(
                          "İş-Yol Konumu", "Hidrolik", "Hidrolik", "Hidrolik"),
                      _datarow4lu("Bağlama Sistemi Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu(
                          "Sol Yaba Güç Aktarımı", "Şaft", "Şaft", "Şaft"),
                      _datarow4lu(
                          "Sağ Yaba Güç Aktarımı", "Zincir", "Zincir", "Zincir"),
                      _datarow4lu("Toplayıcı Düzeneği Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu("İp Dolabı Kapasitesi", "6", "6", "6"),
                      _datarow4lu("Mekanik Balya Sayıcı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu("Dijital Balya Sayıcı", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//
class SuperYunusDual1 extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/SuperYunusDual/1.jpg',
                    'images/SuperYunusDual/2.jpg',
                    'images/SuperYunusDual/3.jpg',
                    'images/SuperYunusDual/4.jpg',
                    'images/SuperYunusDual/5.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SÜPER YUNUS DUAL",
                  style: _textstyle25,
                ),
                Text(superYunusDual1),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("paksan.bandirmawebtasarim.net/images/SuperYunusDual-1.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "ÖZELLİKLER", "2 İPLİ", "3 İPLİ", "3 İPLİ H"),
                    rows: [
                      _datarow4lu("Traktör Gücü", "50-60", "50-60", "55-70"),
                      _datarow4lu("Balya Ağırlığı - Saman", "20 - 25 kg",
                          "20 - 25 kg", "20 - 25 kg"),
                      _datarow4lu("Balya Ağırlığı - Ot", "25 - 35 kg",
                          "25 - 35 kg", "25 - 35 kg"),
                      _datarow4lu(
                          "Balya / Saat", "250 - 350", "250 - 350", "250 - 350"),
                      _datarow4lu("Tırmık Genişliği", "142", "142", "142"),
                      _datarow4lu("Hidrolik Toplayıcı Pistonu", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu(
                          "3. Destek Tekerİ", "Opsiyon", "Opsiyon", "Opsiyon"),
                      _datarow4lu("Haşpay Ünütesi", "Yok", "Yok", "Var"),
                      _datarow4lu(
                          "Balya Ölçüsü", "36 x 46", "36 x 46", "36 x 46"),
                      _datarow4lu("Strok Boyu ve Hızı", "65cm - 92 rpm",
                          "73cm - 92 rpm", "73cm - 92 rpm"),
                      _datarow4lu(
                          "Kuyruk Tipi", "212CStandart", "Standart", "Standart"),
                      _datarow4lu("Bağlama Gurubu", "2 İpli", "3 İpli", "3 İpli"),
                      _datarow4lu("Telli Bağlama Grubu", "Opsiyon", "Yok", "Yok"),
                      _datarow4lu("Bağlama Grubu Aydınlatması", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu("Bağlama Grubu Fanı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu(
                          "İş-Yol Konumu", "Hidrolik", "Hidrolik", "Hidrolik"),
                      _datarow4lu("Bağlama Sistemi Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu(
                          "Sol Yaba Güç Aktarımı", "Şaft", "Şaft", "Şaft"),
                      _datarow4lu(
                          "Sağ Yaba Güç Aktarımı", "Zincir", "Zincir", "Zincir"),
                      _datarow4lu("Toplayıcı Düzeneği Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu("İp Dolabı Kapasitesi", "6", "6", "6"),
                      _datarow4lu("Mekanik Balya Sayıcı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu("Dijital Balya Sayıcı", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

class SuperYunusDual2 extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/SuperYunusDual2/1.jpg',
                    'images/SuperYunusDual2/2.jpg',
                    'images/SuperYunusDual2/3.jpg',
                    'images/SuperYunusDual2/4.jpg',
                    'images/SuperYunusDual2/5.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SÜPER YUNUS DUAL 2",
                  style: _textstyle25,
                ),
                Text(superYunusDual2),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("paksan.bandirmawebtasarim.net/images/SuperYunusDual2.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "ÖZELLİKLER", "2 İPLİ", "3 İPLİ", "3 İPLİ H"),
                    rows: [
                      _datarow4lu("Traktör Gücü", "50-60", "50-60", "55-70"),
                      _datarow4lu("Balya Ağırlığı - Saman", "20 - 25 kg",
                          "20 - 25 kg", "20 - 25 kg"),
                      _datarow4lu("Balya Ağırlığı - Ot", "25 - 35 kg",
                          "25 - 35 kg", "25 - 35 kg"),
                      _datarow4lu(
                          "Balya / Saat", "250 - 350", "250 - 350", "250 - 350"),
                      _datarow4lu("Tırmık Genişliği", "142", "142", "142"),
                      _datarow4lu("Hidrolik Toplayıcı Pistonu", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu(
                          "3. Destek Tekerİ", "Opsiyon", "Opsiyon", "Opsiyon"),
                      _datarow4lu("Haşpay Ünütesi", "Yok", "Yok", "Var"),
                      _datarow4lu(
                          "Balya Ölçüsü", "36 x 46", "36 x 46", "36 x 46"),
                      _datarow4lu("Strok Boyu ve Hızı", "65cm - 92 rpm",
                          "73cm - 92 rpm", "73cm - 92 rpm"),
                      _datarow4lu(
                          "Kuyruk Tipi", "212CStandart", "Standart", "Standart"),
                      _datarow4lu("Bağlama Gurubu", "2 İpli", "3 İpli", "3 İpli"),
                      _datarow4lu("Telli Bağlama Grubu", "Opsiyon", "Yok", "Yok"),
                      _datarow4lu("Bağlama Grubu Aydınlatması", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu("Bağlama Grubu Fanı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu(
                          "İş-Yol Konumu", "Hidrolik", "Hidrolik", "Hidrolik"),
                      _datarow4lu("Bağlama Sistemi Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu(
                          "Sol Yaba Güç Aktarımı", "Şaft", "Şaft", "Şaft"),
                      _datarow4lu(
                          "Sağ Yaba Güç Aktarımı", "Zincir", "Zincir", "Zincir"),
                      _datarow4lu("Toplayıcı Düzeneği Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu("İp Dolabı Kapasitesi", "6", "6", "6"),
                      _datarow4lu("Mekanik Balya Sayıcı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu("Dijital Balya Sayıcı", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

class Hammer extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/Hammer/1.jpg',
                    'images/Hammer/2.jpg',
                    'images/Hammer/3.jpg',
                    'images/Hammer/4.jpg',
                    'images/Hammer/5.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "HAMMER",
                  style: _textstyle25,
                ),
                Text(hammer),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("paksan.bandirmawebtasarim.net/images/Hammer.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "ÖZELLİKLER", "2 İPLİ", "3 İPLİ", "3 İPLİ H"),
                    rows: [
                      _datarow4lu("Traktör Gücü", "50-60", "50-60", "55-70"),
                      _datarow4lu("Balya Ağırlığı - Saman", "20 - 25 kg",
                          "20 - 25 kg", "20 - 25 kg"),
                      _datarow4lu("Balya Ağırlığı - Ot", "25 - 35 kg",
                          "25 - 35 kg", "25 - 35 kg"),
                      _datarow4lu(
                          "Balya / Saat", "250 - 350", "250 - 350", "250 - 350"),
                      _datarow4lu("Tırmık Genişliği", "142", "142", "142"),
                      _datarow4lu("Hidrolik Toplayıcı Pistonu", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu(
                          "3. Destek Tekerİ", "Opsiyon", "Opsiyon", "Opsiyon"),
                      _datarow4lu("Haşpay Ünütesi", "Yok", "Yok", "Var"),
                      _datarow4lu(
                          "Balya Ölçüsü", "36 x 46", "36 x 46", "36 x 46"),
                      _datarow4lu("Strok Boyu ve Hızı", "65cm - 92 rpm",
                          "73cm - 92 rpm", "73cm - 92 rpm"),
                      _datarow4lu(
                          "Kuyruk Tipi", "212CStandart", "Standart", "Standart"),
                      _datarow4lu("Bağlama Gurubu", "2 İpli", "3 İpli", "3 İpli"),
                      _datarow4lu("Telli Bağlama Grubu", "Opsiyon", "Yok", "Yok"),
                      _datarow4lu("Bağlama Grubu Aydınlatması", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu("Bağlama Grubu Fanı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu(
                          "İş-Yol Konumu", "Hidrolik", "Hidrolik", "Hidrolik"),
                      _datarow4lu("Bağlama Sistemi Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu(
                          "Sol Yaba Güç Aktarımı", "Şaft", "Şaft", "Şaft"),
                      _datarow4lu(
                          "Sağ Yaba Güç Aktarımı", "Zincir", "Zincir", "Zincir"),
                      _datarow4lu("Toplayıcı Düzeneği Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu("İp Dolabı Kapasitesi", "6", "6", "6"),
                      _datarow4lu("Mekanik Balya Sayıcı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu("Dijital Balya Sayıcı", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

class Piranha extends StatelessWidget {
  //Orkinos870({this.pageID, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
       endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages3lu('images/Piranha/1.jpg',
                    'images/Piranha/2.jpg', 'images/Piranha/3.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "PİRANHA",
                  style: _textstyle25,
                ),
                Text(piranha),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "ÖZELLİKLER", "2 İPLİ", "3 İPLİ", "3 İPLİ H"),
                    rows: [
                      _datarow4lu("Traktör Gücü", "50-60", "50-60", "55-70"),
                      _datarow4lu("Balya Ağırlığı - Saman", "20 - 25 kg",
                          "20 - 25 kg", "20 - 25 kg"),
                      _datarow4lu("Balya Ağırlığı - Ot", "25 - 35 kg",
                          "25 - 35 kg", "25 - 35 kg"),
                      _datarow4lu(
                          "Balya / Saat", "250 - 350", "250 - 350", "250 - 350"),
                      _datarow4lu("Tırmık Genişliği", "142", "142", "142"),
                      _datarow4lu("Hidrolik Toplayıcı Pistonu", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu(
                          "3. Destek Tekerİ", "Opsiyon", "Opsiyon", "Opsiyon"),
                      _datarow4lu("Haşpay Ünütesi", "Yok", "Yok", "Var"),
                      _datarow4lu(
                          "Balya Ölçüsü", "36 x 46", "36 x 46", "36 x 46"),
                      _datarow4lu("Strok Boyu ve Hızı", "65cm - 92 rpm",
                          "73cm - 92 rpm", "73cm - 92 rpm"),
                      _datarow4lu(
                          "Kuyruk Tipi", "212CStandart", "Standart", "Standart"),
                      _datarow4lu("Bağlama Gurubu", "2 İpli", "3 İpli", "3 İpli"),
                      _datarow4lu("Telli Bağlama Grubu", "Opsiyon", "Yok", "Yok"),
                      _datarow4lu("Bağlama Grubu Aydınlatması", "Standart",
                          "Standart", "Standart"),
                      _datarow4lu("Bağlama Grubu Fanı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu(
                          "İş-Yol Konumu", "Hidrolik", "Hidrolik", "Hidrolik"),
                      _datarow4lu("Bağlama Sistemi Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu(
                          "Sol Yaba Güç Aktarımı", "Şaft", "Şaft", "Şaft"),
                      _datarow4lu(
                          "Sağ Yaba Güç Aktarımı", "Zincir", "Zincir", "Zincir"),
                      _datarow4lu("Toplayıcı Düzeneği Güç Aktarımı", "Zincir",
                          "Zincir", "Zincir"),
                      _datarow4lu("İp Dolabı Kapasitesi", "6", "6", "6"),
                      _datarow4lu("Mekanik Balya Sayıcı", "Standart", "Standart",
                          "Standart"),
                      _datarow4lu("Dijital Balya Sayıcı", "Opsiyon", "Opsiyon",
                          "Opsiyon"),
                    ],
                  ),
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//PELİCAN 8M3

class Pelican8m3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/Pelican8m3/1.jpg',
                    'images/Pelican8m3/2.jpg',
                    'images/Pelican8m3/3.jpg',
                    'images/Pelican8m3/4.jpg',
                    'images/Pelican8m3/5.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "PELİCAN 8M3",
                  style: _textstyle25,
                ),
                Text(pelican8m3),
                SizedBox(
                  height: 20,
                ),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png'),    
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "MODEL", "KAPASİTE", "BIÇAK SAYISI", "HELEZON SAYISI"),
                    rows: [
                      _datarow4lu("PELICAN", "8 m3", "134", "Çift"),
                    ],
                  ),
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("TARTI SİSTEMİ", "Opsiyonel"),
                  rows: [
                    _datarow2li("ELEKTRİK SİSTEMİ", "Opsiyonel"),
                    _datarow2li("UZUNLUK", "4885"),
                    _datarow2li("Genişlik", "2140"),
                    _datarow2li("Genişlik", "2140"),
                    _datarow2li("Yükseklik", "2600"),
                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//PELİCAN 6M3
class Pelican6M3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/Pelican6m3/1.jpg',
                    'images/Pelican6m3/2.jpg',
                    'images/Pelican6m3/3.jpg',
                    'images/Pelican6m3/4.jpg',
                    'images/Pelican6m3/5.jpg'),
                //images/Pelican6m3/6.jpg
                SizedBox(
                  height: 10,
                ),
                Text(
                  "PELİCAN 6M3",
                  style: _textstyle25,
                ),
                Text(pelican6m3),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "MODEL", "KAPASİTE", "BIÇAK SAYISI", "HELEZON SAYISI"),
                    rows: [
                      _datarow4lu("PELICAN", "6 m3", "134", "Çift"),
                    ],
                  ),
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("TARTI SİSTEMİ", "Opsiyonel"),
                  rows: [
                    _datarow2li("ELEKTRİK SİSTEMİ", "Opsiyonel"),
                    _datarow2li("Uzunluk", "4755"),
                    _datarow2li("Ağırlık", "3050"),
                    _datarow2li("Genişlik", "2100"),
                    _datarow2li("Yükseklik", "2200"),
                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Image.network('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//PELİCAN 4M3
class Pelican4M3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/Pelican4m3/1.jpg',
                    'images/Pelican4m3/2.jpg',
                    'images/Pelican4m3/3.jpg',
                    'images/Pelican4m3/4.jpg',
                    'images/Pelican4m3/5.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "PELİCAN 4M3",
                  style: _textstyle25,
                ),
                Text(pelican4m3),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(
                                  child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "MODEL", "KAPASİTE", "BIÇAK SAYISI", "HELEZON SAYISI"),
                    rows: [
                      _datarow4lu("PELICAN", "4 m3", "55", "Tek"),
                    ],
                  ),
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("TARTI SİSTEMİ", "Opsiyonel"),
                  rows: [
                    _datarow2li("ELEKTRİK SİSTEMİ", "Opsiyonel"),
                    _datarow2li("Uzunluk", "4300"),
                    _datarow2li("Ağırlık", "2050"),
                    _datarow2li("Genişlik", "1850"),
                    _datarow2li("Yükseklik", "2025"),
                  ],
                ),
                FittedBox(
                    child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "MODEL", "KAPASİTE", "BIÇAK SAYISI", "HELEZON SAYISI"),
                    rows: [
                      _datarow4lu("PELICAN", "4 m3", "122", "Çift"),
                    ],
                  ),
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("TARTI SİSTEMİ", "Opsiyonel"),
                  rows: [
                    _datarow2li("ELEKTRİK SİSTEMİ", "Opsiyonel"),
                    _datarow2li("Uzunluk", "4365"),
                    _datarow2li("Ağırlık", "2400"),
                    _datarow2li("Genişlik", "2010"),
                    _datarow2li("Yükseklik", "1950"),
                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Image.network('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//DIAMOND 3m3
class Diamond3M3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages2li(
                    'images/Diamond3m3/1.jpg', 'images/Diamond3m3/2.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "DIAMOND 3m3",
                  style: _textstyle25,
                ),
                Text(diamond3m3),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(
                    child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "MODEL", "KAPASİTE", "BIÇAK SAYISI", "HELEZON SAYISI"),
                    rows: [
                      _datarow4lu("DIAMOND", "3 m3", "7", "1"),
                    ],
                  ),
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("TARTI SİSTEMİ", "Opsiyonel"),
                  rows: [
                    _datarow2li("ELEKTRİK SİSTEMİ", "Opsiyonel"),
                    _datarow2li("Uzunluk", "4600"),
                    _datarow2li("Ağırlık", "1500"),
                    _datarow2li("Genişlik", "1850"),
                    _datarow2li("Yükseklik", "2300"),
                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Image.network('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//DIAMOND 2m3
class Diamond2M3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages2li(
                    'images/Diamond2m3/1.jpg', 'images/Diamond2m3/2.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "DIAMOND 2m3",
                  style: _textstyle25,
                ),
                Text(diamond2m3),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(
                    child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "MODEL", "KAPASİTE", "BIÇAK SAYISI", "HELEZON SAYISI"),
                    rows: [
                      _datarow4lu("DIAMOND", "2 m3", "6", "1"),
                    ],
                  ),
                ),
           
               DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn2li("TARTI SİSTEMİ", "Opsiyonel"),
                    rows: [
                      _datarow2li("ELEKTRİK SİSTEMİ", "Opsiyonel"),
                      _datarow2li("Uzunluk", "4200"),
                      _datarow2li("Ağırlık", "1100"),
                      _datarow2li("Genişlik", "1600"),
                      _datarow2li("Yükseklik", "2400"),
                    ],
                  ),
              
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Image.network('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//DIAMOND 1.5m3
class Diamond15M3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages2li(
                    'images/Diamond1-5m3/1.jpg', 'images/Diamond1-5m3/2.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "DIAMOND 1.5m3",
                  style: _textstyle25,
                ),
                Text(diamond15m3),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(
                     child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "MODEL", "KAPASİTE", "BIÇAK SAYISI", "HELEZON SAYISI"),
                    rows: [
                      _datarow4lu("DIAMOND", "1,5 m3", "6", "1"),
                    ],
                  ),
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("TARTI SİSTEMİ", "Opsiyonel"),
                  rows: [
                    _datarow2li("ELEKTRİK SİSTEMİ", "Opsiyonel"),
                    _datarow2li("Uzunluk", "1700"),
                    _datarow2li("Ağırlık", "500"),
                    _datarow2li("Genişlik", "1200"),
                    _datarow2li("Yükseklik", "1570"),
                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Image.network('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//SCORPION SIRA BAĞIMSIZ SİLAJ BİÇER
class Scorpion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages2li(
                    'images/Scorpion/1.jpg', 'images/Scorpion/1.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "SCORPION SIRA BAĞIMSIZ SİLAJ BİÇER",
                  style: _textstyle25,
                ),
                Text(scorpion),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(

                  child: DataTable(

                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "MODEL", "KAPASİTE", "TRAKTÖR GÜCÜ", "KUYRUK MİL HIZI"),
                    rows: [
                      _datarow4lu("SCORPİON", "40-50 Ton", "75 Hp", "1000 Rpm"),
                    ],
                  ),
                ),

                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("Uzunluk", "510 cm"),
                  rows: [
                    _datarow2li("Ağırlık", "1230 Kg"),
                    _datarow2li("Genişlik", "325 cm"),
                  ],
                ),

                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Image.network('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//AHTAPOT SİLAJ PAKETLEME MAKİNASI
class Ahtapot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages4lu(
                    'images/Ahtapot/1.jpg',
                    'images/Ahtapot/2.jpg',
                    'images/Ahtapot/3.jpg',
                    'images/Ahtapot/4.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "AHTAPOT SİLAJ PAKETLEME MAKİNASI",
                  style: _textstyle25,
                ),
                Text(ahtapot),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(
                           child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu("MODEL", "SAAT", "STREÇ ADETİ", "KW"),
                    rows: [
                      _datarow4lu("AHTAPOD", "30-40 ad.", "3", "1000 Rpm"),
                    ],
                  ),
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("Cm", "80x80x105"),
                  rows: [
                    _datarow2li("Kg", "350-700"),
                    _datarow2li("Kg", "3800"),
                    _datarow2li("Cm", "488"),
                    _datarow2li("Cm", "230"),
                    _datarow2li("Cm", "267"),
                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Image.network('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//YENGEÇ ÇAYIR BİÇME
class Yengec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages2li(
                    'images/Yengec/1.jpg', 'images/Yengec/2.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "YENGEÇ ÇAYIR BİÇME",
                  style: _textstyle25,
                ),
                Text(yengec),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn4lu("MODEL", "TAMBUR", "GENİŞLİK", "HIZ"),
                  rows: [
                    _datarow4lu("YENGEC ", "2", "165 cm", "	10 km"),
                  ],
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("KAPASİTE", "1,65 h/s"),
                  rows: [
                    _datarow2li("BIÇAK SAYISI", "6"),
                    _datarow2li("BIÇAK U.", "105 mm"),
                    _datarow2li("BIÇAK E.", "46mm"),
                    _datarow2li("TOPLAM", "2750 mm"),
                    _datarow2li("AĞIRLIK", "380 kg"),
                    _datarow2li("DEVİR", "540 d/dk"),
                    _datarow2li("GÜÇ", "55 bg"),
                  ],
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn4lu("MODEL", "TAMBUR", "GENİŞLİK", "HIZ"),
                  rows: [
                    _datarow4lu("YENGEC ", "2", "135 cm", "	10 km"),
                  ],
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("KAPASİTE", "1,35 h/s"),
                  rows: [
                    _datarow2li("BIÇAK SAYISI", "6"),
                    _datarow2li("BIÇAK U.", "105 mm"),
                    _datarow2li("BIÇAK E.", "46mm"),
                    _datarow2li("TOPLAM", "2500 mm"),
                    _datarow2li("AĞIRLIK", "330 kg"),
                    _datarow2li("DEVİR", "540 d/dk"),
                    _datarow2li("GÜÇ", "55 bg"),
                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), NetworkImage('https://paksan.bandirmawebtasarim.net/'+
                Image.network('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

//KIRLANGIÇ OT TOPLAMA MAKİNASI
class Kirlangic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(
                    'images/Orkinos.jpg',
                    'images/ScorpionX.jpg',
                    'images/Yabali.jpg',
                    'images/PelicanYatay8m3.png',
                    'images/Diamond31.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "KIRLANGIÇ OT TOPLAMA MAKİNASI",
                  style: _textstyle25,
                ),
                Text(kirlangic),
                SizedBox(
                  height: 20,
                ),
                imageNetwork("https://paksan.bandirmawebtasarim.net/images/Orkinos1270.png"),
                FittedBox(
                    child: DataTable(
                    columnSpacing: 0,
                    columns: _datacolumn4lu(
                        "MODEL", "İŞ GENİŞLİĞİ", "ROTAR ÇAPI", "KOL SAYISI"),
                    rows: [
                      _datarow4lu("KIRLANGIC 9 ", "350 cm", "273 cm", "	9"),
                    ],
                  ),
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: _datacolumn2li("YAY", "3 X 2"),
                  rows: [
                    _datarow2li("YAY KESİTİ", "9 mm"),
                    _datarow2li("GÜÇ", "20 hp"),
                    _datarow2li("DEVİR", "540 d /dk"),
                    _datarow2li("GENİŞLİK", "125 cm"),
                    _datarow2li("AĞIRLIK", "345 kg"),
                  ],
                ),
                imageNetwork('https://paksan.bandirmawebtasarim.net/images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
}

DataRow _datarow(String t1, String t2, String t3, String t4, String t5) {
  return DataRow(cells: [
    DataCell(Text(
      t1,
      style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
    )),
    DataCell(Text(
      t2,
      style: TextStyle(fontSize: 8),
    )),
    DataCell(Text(
      t3,
      style: TextStyle(fontSize: 8),
    )),
    DataCell(Text(
      t4,
      style: TextStyle(fontSize: 8),
    )),
    DataCell(Text(
      t5,
      style: TextStyle(fontSize: 8),
    ))
  ]);
}

DataRow _datarow4lu(String t1, String t2, String t3, String t4) {
  return DataRow(cells: [
    DataCell(Text(
      t1,
      style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
    )),
    DataCell(Text(
      t2,
      style: TextStyle(fontSize: 8),
    )),
    DataCell(Text(
      t3,
      style: TextStyle(fontSize: 8),
    )),
    DataCell(Text(
      t4,
      style: TextStyle(fontSize: 8),
    )),
  ]);
}

List<DataColumn> _datacolumn(
    String t1, String t2, String t3, String t4, String t5) {
  return [
    DataColumn(
        label: Text(
      t1,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    )),
    DataColumn(
        label: Text(
      t2,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    )),
    DataColumn(
        label: Text(
      t3,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    )),
    DataColumn(
        label: Text(
      t4,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    )),
    DataColumn(
        label: Text(
      t5,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    )),
  ];
}

List<DataColumn> _datacolumn4lu(String t1, String t2, String t3, String t4) {
  return [
    DataColumn(
        label: Text(
      t1,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    )),
    DataColumn(
        label: Text(
      t2,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    )),
    DataColumn(
        label: Text(
      t3,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    )),
    DataColumn(
        label: Text(
      t4,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    )),
  ];
}

List<DataColumn> _datacolumn2li(String t1, String t2) {
  return [
    DataColumn(
        label: Text(
      t1,
      style: TextStyle(fontSize: 10),
    )),
    DataColumn(
        label: Text(
      t2,
      style: TextStyle(fontSize: 10),
    )),
  ];
}

DataRow _datarow2li(String t1, String t2) {
  return DataRow(cells: [
    DataCell(Text(
      t1,
      style: TextStyle(fontSize: 10),
    )),
    DataCell(Text(
      t2,
      style: TextStyle(fontSize: 10),
    )),
  ]);
}

final _textstyle25 = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

SizedBox productDetailsIamages(String imageUrl1, String imageUrl2,
    String imageUrl3, String imageUrl4, String imageUrl5) {
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
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl1),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl2),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl3),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl4),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl5),
        ],
      ));
}

SizedBox productDetailsIamages6li(String imageUrl1, String imageUrl2,
    String imageUrl3, String imageUrl4, String imageUrl5, String imageUrl6) {
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
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl1),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl2),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl3),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl4),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl5),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl6),
        ],
      ));
}

SizedBox productDetailsIamages2li(String imageUrl1, String imageUrl2) {
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
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl1),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl2),
        ],
      ));
}

SizedBox productDetailsIamages4lu(
    String imageUrl1, String imageUrl2, String imageUrl3, String imageUrl4) {
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
          NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl1),
          NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl2),
          NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl3),
          NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl4),
        ],
      ));
}

SizedBox productDetailsIamages3lu(
    String imageUrl1, String imageUrl2, String imageUrl3) {
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
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl1),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl2),
           NetworkImage('https://paksan.bandirmawebtasarim.net/'+imageUrl3),
        ],
      ));
}
