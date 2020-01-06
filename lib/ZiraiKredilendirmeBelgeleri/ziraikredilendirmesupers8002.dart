import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/kvkk.dart';
import 'package:first_app/constants.dart';

class ZiraiKredilendirmeSuperS8002 extends StatelessWidget {
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
                _textZKSuperS8002(kTextZKSuperS8002),
                buttonZKSuperS8002(
                    kButton1TextZKSuperS8002,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKDigerUrunler1,
                        pdfAssetNamed: assetPDFZKDigerUrunler1,
                        pdfName: kPdfZKDigerUrunler1)),
                buttonZKSuperS8002(
                    kButton2TextZKSuperS8002,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKDigerUrunler2,
                        pdfAssetNamed: assetPDFZKDigerUrunler2,
                        pdfName: kPdfZKDigerUrunler2)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonZKSuperS8002(String buttonText, Function function) {
    return RaisedButton(
      color: Colors.grey,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          buttonText,
        ),
      ),
      onPressed: function,
    );
  }

  Container _textZKSuperS8002(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.grey[300],
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
    );
  }

  _pdfAc(
      {BuildContext context,
      String pdfName,
      String pdfAsset,
      String pdfAssetNamed}) async {
    await GetFilesFromAssets(pdfname: pdfName)
        .getFileFromAsset(pdfAsset)
        .then((f) {
      pdfAssetNamed = f.path;
    });
    if (pdfAssetNamed != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PdfViewPage(path: pdfAssetNamed)));
    }
  }
}
