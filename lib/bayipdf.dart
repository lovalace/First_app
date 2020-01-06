import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'constants.dart';
import 'kvkk.dart';

class BayiGirisiPdf extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                textKorumaliBayiGirisi(),
                buttonDeneyRaporlari(context),
                buttonTeknikSartnameler(context),
                buttonZiraiKredileme(context),
                buttonYerliMali(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonDeneyRaporlari(context) {
    return RaisedButton(
      color: Colors.grey,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "DENEY RAPORLARI",
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/deneyraporlari");
      },
    );
  }

  RaisedButton buttonTeknikSartnameler(context) {
    return RaisedButton(
      color: Colors.grey,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "TEKNİK ŞARTNAMELER",
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/tekniksartnameler");
      },
    );
  }

  RaisedButton buttonZiraiKredileme(context) {
    return RaisedButton(
      color: Colors.grey,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "ZİRAİ KREDİLENDİRME BELGELERİ",
        ),
      ),
      onPressed: () {Navigator.pushNamed(context, "/ziraikredilendirmebelgeleri");},
    );
  }

  RaisedButton buttonYerliMali(context) {
    return RaisedButton(
      color: Colors.grey,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "YERLİ MALI BELGESİ",
        ),
      ),
      onPressed: () async {
        await GetFilesFromAssets(pdfname: kPdfYerliMali)
            .getFileFromAsset(kPdfAssetYerliMali)
            .then((f) {
          assetPDFYerliMali = f.path;
        });
        if (assetPDFYerliMali != null) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PdfViewPage(path: assetPDFYerliMali)));
        }
      },
    );
  }

  Container textKorumaliBayiGirisi() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.grey[300],
      child: Text(
        'Korumalı: BAYİ GİRİŞİ',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
    );
  }
}
