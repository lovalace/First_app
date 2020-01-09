import 'package:first_app/data.dart';
import 'package:first_app/utility.dart';
import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Products extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
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
                child: Image.asset('images/FSon.jpg'),
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
            child: Image.asset(
              'images/Orkinos.jpg',
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
              child: Image.asset('images/KirlangicKapak.jpg', scale: 3)),
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
            child: Image.asset('images/ScorpionX.jpg', scale: 3),
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
            child: Image.asset('images/cayirbicme.jpg', scale: 3),
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
            child: Image.asset('images/yatayyem.jpg', scale: 3),
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
            child: Image.asset('images/Diamond3X-1.jpg', scale: 3),
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
            child: Image.asset('images/Yabali.jpg', scale: 3),
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

// class ProductDetails extends StatelessWidget {
//   final String productText;
//   final String productDetailText;
//   final String name;

//   ProductDetails({this.productText, this.productDetailText, this.name});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NewDrawer(),
//       appBar: NewAppBar(),
//       backgroundColor: Colors.white,
//       body: Scrollbar(
//         child: SingleChildScrollView(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 productDetailsIamages(),
//                 Text(
//                 this.productText,
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                 ),
//                // Center(child: Text(pageID.toString())),
//                 Center(child: Text(name)),
//                 Text( productDetailText ),
//                 Text("Balya Yüksekliği: 70 cm"),
//                 Text("50 – 270 cm"),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 imageAsset("images/Orkinos870.png"),
//                 DataTable(
//                   columnSpacing: 0,
//                   columns: 
//                     _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
//                   rows: [
//                     _datarow("Balya Genişliği", "80", "80", "120", "120"),
//                     _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
//                     _datarow("Balya / Saat", "100", "130", "130", "150"),
//                     _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
//                     _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
//                     _datarow("Dişli Aralığı", "61", "61", "61", "61"),
//                     _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
//                     _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
//                     _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
//                     _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
//                     _datarow("İp Sayısı", "4", "4", "6", "6"),
//                     _datarow("İp Kapasitesi", "24", "24", "24", "24"),
//                     _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
//                     _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
//                     _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
//                     _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
//                     _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
//                     _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
//                     _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
//                     _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
//                     _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
//                     _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
//                     _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

//                   ],
//                 )
//                 //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

//                 // Image.asset('images/FSon.jpg'),
//               ]),
//         ),
//       ),
//     );
//   }
// }



class Orkinos870 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "ORKİNOS 870",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
               // Center(child: Text(pageID.toString())),
               // Center(child: Text(name)),
                Text( orkinos870 ),
                Text("Balya Yüksekliği: 70 cm"),
                Text("50 – 270 cm"),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos870.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "ORKİNOS 1270",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(orkinos1270),
                Text("Balya Yüksekliği: 70 cm"),
                Text("50 – 270 cm"),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "SÜPER S8002",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(supers8002),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "SÜPER S8002 E",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(super8002E),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "SÜPER 8002E DUAL",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(super8002EDual1),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "SÜPER 8002E DUAL 2",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(super8002Dual2),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "SÜPER YUNUS",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(superYunus),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "SÜPER YUNUS 3 YABALI",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(superYunusYabali),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "SÜPER YUNUS DUAL",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(superYunusDual1),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "SÜPER YUNUS DUAL 2",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(superYunusDual2),
                Text("Balya Ağırlığı / Saman: 20 – 25 kg"),
                Text("Balya Ağırlığı – Ot: 25 – 35 kg"),
                Text("Balya / Saat: 250 – 350"),
                Text("Balya Ölçüsü: 36 x 46 cm"),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "HAMMER",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(hammer),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "PİRANHA",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(piranha),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "PELİCAN 8M3",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(pelican8m3),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "PELİCAN 6M3",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(pelican6m3),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "PELİCAN 4M3",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(pelican4m3 ),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "DIAMOND 3m3",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(diamond3m3),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "DIAMOND 2m3",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(diamond2m3),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
               Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "DIAMOND 1.5m3",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(diamond15m3),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "SCORPION SIRA BAĞIMSIZ SİLAJ BİÇER",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(scorpion),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "AHTAPOT SİLAJ PAKETLEME MAKİNASI",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(ahtapot),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "YENGEÇ ÇAYIR BİÇME",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text( yengec),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 Image.asset('images/FSon.jpg'),
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
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                productDetailsIamages(),
                Text(
                  "KIRLANGIÇ OT TOPLAMA MAKİNASI",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(kirlangic),
                SizedBox(
                  height: 20,
                ),
                imageAsset("images/Orkinos1270.png"),
                DataTable(
                  columnSpacing: 0,
                  columns: 
                    _datacolumn("ÖZELLİKLER","4 İPLİ","4 İPLİ H","6 İPLİ","6 İPLİ H"),
                  rows: [
                    _datarow("Balya Genişliği", "80", "80", "120", "120"),
                    _datarow("Balya Yüksekliği", "50-260", "50-260", "50- 270", "50- 270"),
                    _datarow("Balya / Saat", "100", "130", "130", "150"),
                    _datarow("Tırmık Genişliği", "190", "190", "230", "230"),
                    _datarow("Toplayıcı Dişli Sayısı", "4", "4", "4", "4"),
                    _datarow("Dişli Aralığı", "61", "61", "61", "61"),
                    _datarow("Piston Vuruşu / dk", "51", "51", "51", "51"),
                    _datarow("Piston Vuruşu / cm", "750", "750", "750", "750"),
                    _datarow("Yoğunluk Kontrolü", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik", "4 Hidrolik"),
                    _datarow("Balya Odası Uzunluğu", "3", "3", "3", "3"),
                    _datarow("İp Sayısı", "4", "4", "6", "6"),
                    _datarow("İp Kapasitesi", "24", "24", "24", "24"),
                    _datarow("Bağlama Gurubu Temizleme", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan", "Elektrikli Fan"),
                    _datarow("Bağlama Sistemi", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm", "Çift Düğüm"),
                    _datarow("Rotor", "Helisel Rotor", "Helisel Rotor", "Heliser Rotor", "Heliser Rotor"),
                    _datarow("PTO Gereksinimi", "1000", "1000", "1000", "1000"),
                    _datarow("Fren Sistemi", "Hidrolik", "Hidrolik", "Hidrolik", "Hidrolik"),
                    _datarow("Bıçak Sayısı", "Yok", "15", "Yok", "25"),
                    _datarow("Komprosör", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Tartı Sistemi", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Nem Ölçer", "Opsiyon", "Opsiyon", "Opsiyon", "Opsiyon"),
                    _datarow("Otomatik Yağlama", "Opsiyon", "Opsiyon", "70", "70"),
                    _datarow("Çift Dingil", "Opsiyon", "Opsiyon", "70", "70"),

                  ],
                ),
               Image.asset('images/FSon.jpg'),
              ]),
              
        ),
      ),
    );
  }
}

DataRow _datarow( String t1,String t2,String t3,String t4,String t5 ) {
  return DataRow(
          cells: [ DataCell(Text(t1,style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),)),
                   DataCell(Text(t2,style: TextStyle(fontSize: 8),)),
                   DataCell(Text(t3,style: TextStyle(fontSize: 8),)),
                   DataCell(Text(t4,style: TextStyle(fontSize: 8),)),
                   DataCell(Text(t5,style: TextStyle(fontSize: 8),)) ] );
} 

List<DataColumn> _datacolumn( String t1,String t2,String t3,String t4,String t5 ) {
  return  [  DataColumn(label: Text("ÖZELLİKLER",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)),
             DataColumn(label: Text("4 İPLİ",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)),
             DataColumn(label: Text("4 İPLİ H",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)),
             DataColumn(label: Text("6 İPLİ",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)),
             DataColumn(label: Text("6 İPLİ H",style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)),];
} 

SizedBox productDetailsIamages() {
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
          AssetImage(
            'images/Orkinos.jpg',
          ),
          AssetImage('images/ScorpionX.jpg'),
          AssetImage('images/Yabali.jpg'),
          AssetImage("images/PelicanYatay8m3.png"),
          AssetImage("images/Diamond31.png"),
        ],
      ));
}

