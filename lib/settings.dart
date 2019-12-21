import 'package:flutter/material.dart';
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paksan Makine",),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey[700],
      body: Center(
        
        child: Column(
          children: <Widget>[
            Text("Ayarlar Sayfası"),
            
            // RaisedButton(
            //   child: Text("Bu Sayfayı Kapat"),
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
