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

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Home(),
      "/detail": (context) => Detail(),
      "/settings": (context) => Settings(),
      "/aboutus": (context) => AboutUs(),
      "/products": (context) => Products(),
      "/newsfromus": (context) => NewsFromUs(),
      "/bayigirisi": (context) => BayiGirisi(),
      "/kvkk": (context) => Kvkk(),
      "/kalite": (context) => Kalite(),
      "/iletisim": (context) => Iletisim(),
      "/buyukbalya": (context) => BuyukBalya(),
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
          _listTile(context, "İLETİŞİM", "/iletisim")
        ],
      ),
    );
  }
}

Widget _listTile(BuildContext context, String _text, String _url) => ListTile(
      title: Text(_text),
      onTap: () {
        Navigator.pushNamed(context, _url);
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
