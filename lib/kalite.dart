import 'package:flutter/material.dart';
import 'package:first_app/main.dart';

class Kalite extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NewDrawer(),
      //drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                color: Colors.white,
                child: Text(
                  'KALİTE POLİTİKAMIZ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                child: Image.network('https://paksan.bandirmawebtasarim.net/images/kalitepol.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
