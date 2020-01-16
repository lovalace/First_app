

import 'package:flutter/material.dart';
import 'package:first_app/settings.dart';
import 'package:first_app/home.dart';
import 'package:first_app/aboutus.dart';
import 'package:first_app/detail.dart';
import 'package:first_app/products.dart';
import 'package:first_app/newsfromus.dart';
import 'package:first_app/bayigirisi.dart';
import 'package:first_app/kvkk.dart';
import 'package:first_app/kalite.dart';
import 'package:first_app/iletisim.dart';
import 'package:first_app/buyukbalya.dart';
import 'bayipdf.dart';
import 'DeneyRaporlari/deneyraporlari.dart';
import 'DeneyRaporlari/deneyraporlaridigerurunlerimiz.dart';
import 'DeneyRaporlari/supers8002.dart';
import 'DeneyRaporlari/superyunusbalya.dart';
import 'DeneyRaporlari/YemKarma.dart';
import 'TeknikSartnameler/tekniksartnameler.dart';
import 'TeknikSartnameler/tekniksartnamelerdigerurunlerimiz.dart';
import 'TeknikSartnameler/tekniksartnamelers8002.dart';
import 'TeknikSartnameler/tekniksartnamelersuperyunus.dart';
import 'TeknikSartnameler/tekniksartnameleryemkarma.dart';
import 'ZiraiKredilendirmeBelgeleri/ziraikredilendirmebelgeleri.dart';
import 'ZiraiKredilendirmeBelgeleri/ziraikredilendirmedigerurunlerimiz.dart';
import 'ZiraiKredilendirmeBelgeleri/ziraikredilendirmesupers8002.dart';
import 'ZiraiKredilendirmeBelgeleri/ziraikredilendirmesuperyunus.dart';
import 'ZiraiKredilendirmeBelgeleri/ziraikredilendirmeyemkarma.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => Home(),
      "/detail": (context) => Detail(),
      "/settings": (context) => Settings(),
      "/aboutus": (context) => AboutUs(),
      "/products": (context) => Products(),
      "/newsfromus": (context) => NewsFromUs(),
      "/bayigirisi": (context) => BayiGirisi(),
      "/kvkk": (context) => Deneme01(),
      "/kalite": (context) => Kalite(),
      "/iletisim": (context) => Iletisim(),
      "/buyukbalya": (context) => BuyukBalya(),
      "/kucukbalya": (context) => KucukBalya(),
      "/yatayyemkarma": (context) => YatayYemKarmma(),
      "/dikeyyemkarma": (context) => DikeyYemKarma(),
      "/silaj": (context) => Silaj(),
      "/cayirbicme": (context) => CayirBicme(),
      "/ottoplama": (context) => OtToplama(),
      "/bayigirisipdf": (context) => BayiGirisiPdf(),
      "/deneyraporlari": (context) => DeneyRaporlari(),
      "/deneyraporlaridigerurunlerimiz": (context) =>
          DeneyRaporlariDigerUrunlerimiz(),
      "/deneyraporlarisuper8002": (context) => DeneyRaporlariSuper8002(),
      "/superyunusbalyamakinesi": (context) => SuperYunusBalyaMakinesi(),
      "/yemkarmamakinesi": (context) => YemKarmaMakinesi(),
      "/tekniksartnameler": (context) => TeknikSartnameler(),
      "/tekniksartnamelersuper8002": (context) => TeknikSartnamelerSuperS8002(),
      "/tekniksartnamelerdigerurunlerimiz": (context) =>
          TeknikSartnamelerDigerUrunlerimiz(),
      "/tekniksartnamelersuperyunusbalyamakinesi": (context) =>
          TeknikSartnamelerSuperYunusBalyaMakinesi(),
      "/tekniksartnameleryemkarmamakinesi": (context) =>
          TeknikSartnamelerYemKarmaMakinesi(),
      "/ziraikredilendirmebelgeleri": (context) =>
          ZiraiKredilendirmeBelgeleri(),
      "/ziraikredilendirmedigerurunlerimiz": (context) =>
          ZiraiKredilendirmeDigerUrunlerimiz(),
      "/ziraikredilendirmesupers8002": (context) =>
          ZiraiKredilendirmeSuperS8002(),
      "/ziraikredilendirmesuperyunus": (context) =>
          ZiraiKredilendirmeSuperYunus(),
      "/ziraikredilendirmeyemkarma": (context) => ZiraiKredilendirmeYemKarma(),
      "/Orkinos870": (context) => Orkinos870(),
      "/Orkinos1270": (context) => Orkinos1270(),
      "/SuperS8002": (context) => SuperS8002(),
      "/SuperS8002E": (context) => SuperS8002E(),
      "/SuperS8002EDual1": (context) => SuperS8002EDual1(),
      "/SuperS8002EDual2": (context) => SuperS8002EDual2(),
      "/SuperYunus": (context) => SuperYunus(),
      "/SuperYunus3Yabali": (context) => SuperYunus3Yabali(),
      "/SuperYunusDual1": (context) => SuperYunusDual1(),
      "/SuperYunusDual2": (context) => SuperYunusDual2(),
      "/Pelican8M3": (context) => Pelican8m3(),
      "/Pelican6M3": (context) => Pelican6M3(),
      "/Pelican4M3": (context) => Pelican4M3(),
      "/Diamond3m3": (context) => Diamond3M3(),
      "/Diamond2m3": (context) => Diamond2M3(),
      "/Diamond15m3": (context) => Diamond15M3(),
      "/Scorpion": (context) => Scorpion(),
      "/Ahtapot": (context) => Ahtapot(),
      "/Yengec": (context) => Yengec(),
      "/Kirlangic": (context) => Kirlangic(),
      "/Piranha": (context) =>Piranha(),
      "/Hammer":(context)=>Hammer(),
    },
  ));
}

class NewDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      _safeArea,
      _listTile(context, "ANASAYFA", "/"),
      _listTile(context, "HAKKIMIZDA", "/aboutus"),
      _listTile(context, "ÜRÜNLER", "/products"),
      _listTile(context, "BİZDEN HABERLER", "/newsfromus"),
      _listTile(context, "BAYİ GİRİŞİ", "/bayigirisi"),
      _listTile(context, "KİŞİSEL VERİLERİN KORUNMASI", "/kvkk"),
      _listTile(context, "KALİTE POLİTİKAMIZ", "/kalite"),
      _listTile(context, "İLETİŞİM", "/iletisim"),
    ],
        ),
      );
  }
}

Widget _listTile(BuildContext context, String text, String url) => ListTile(
      title: Text(text),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, url);
      },
    );

Widget get _safeArea => SafeArea(
      child: DrawerHeader(
        child: Text(''),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(
              'images/PAKSAN.png',
              scale: 1.2,
            ),
          ),
          color: Colors.grey[200],
        ),
      ),
    );

class NewAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          // var aa =  context.owner.toString();
                Navigator.pop(context);
                // if(context.widget.)
                // Navigator.push(context,
                //     new MaterialPageRoute(builder: (context) => new Home()));
              },
          
          ),
        title: Image.asset(
    'images/PAKSAN.png',
    scale: 1.7,
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
class NewAppBarNoBack extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     onPressed: () {
      //     // var aa =  context.owner.toString();
      //           Navigator.pop(context);
      //           // if(context.widget.)
      //           // Navigator.push(context,
      //           //     new MaterialPageRoute(builder: (context) => new Home()));
      //         },
          
      //     ),
        title: Image.network(
    'https://paksan.bandirmawebtasarim.net/images/PAKSAN.png',
    scale: 1.7,
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
