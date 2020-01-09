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

class ProductDetails extends StatelessWidget {
  final int pageID;
  final String name;

  ProductDetails({this.pageID, this.name});

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
                  "Orkinos 1270",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Center(child: Text(pageID.toString())),
                Center(child: Text(name)),
                Text(
                    '''Orkinos, Türk mühendislerimiz tarafından geliştirilen Türkiye’nin ilk ve tek yerli prizmatik büyük balya makinasıdır. 6 ipli çift düğüm 120×70 cm balya genişliği, 230 cm tırmık kapasitesi, dayanıklı ve sağlam yapısı ile büyük arazilerde kullanılmak için
tasarlanmıştır. 6 ipli çift düğümlü bağlama grubu ile haşbaylı ve haşbaysız olarak üretilmektedir."
            '''),
                Text("Balya Yüksekliği: 70 cm"),
                Text("50 – 270 cm"),
                SizedBox(
                  height: 20,
                ),
                DataTable(
                  columnSpacing: 0,
                  columns: [
                    DataColumn(label: Text("ÖZELLİKLER")),
                     DataColumn(label: Text("4 İPLİ")),
                      DataColumn(label: Text("4 İPLİ H")),
                       DataColumn(label: Text("6 İPLİ")),
                       DataColumn(label: Text("6 İPLİ H")),
                    ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text("Balya Genişliği")),
                       DataCell(Text("80")),
                        DataCell(Text("80")),
                         DataCell(Text("120")),
                         DataCell(Text("120")),
                    
                    
                    ]),
                    DataRow(cells: [
                       DataCell(Text("cell")),
                       DataCell(Text("cell")),
                        DataCell(Text("cell")),
                         DataCell(Text("cell")),
                         DataCell(Text("cell")),
                    ])
                  ],
                )
                //Text("Genel Bilgi",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                // Image.asset('images/FSon.jpg'),
              ]),
        ),
      ),
    );
  }
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

