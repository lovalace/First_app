import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class Iletisim extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }
}
