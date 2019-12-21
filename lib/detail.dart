import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewAppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Detay Sayfası"),
            RaisedButton(
              child: Text("Bu Sayfayı Kapat"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}