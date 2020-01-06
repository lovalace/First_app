import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/kvkk.dart';
import 'package:first_app/constants.dart';

class TeknikSartnamelerDigerUrunlerimiz extends StatelessWidget {
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
                _textTSDU(kTextTSDU),
                buttonDRDU(
                    kButton1TextTSDU,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSDU1,
                        pdfAssetNamed: assetPDFTSDU1,
                        pdfName: kPdfTSDU1)),
                buttonDRDU(
                    kButton2TextTSDU,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSDU2,
                        pdfAssetNamed: assetPDFTSDU2,
                        pdfName: kPdfTSDU2)),
                buttonDRDU(
                    kButton3TextTSDU,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSDU3,
                        pdfAssetNamed: assetPDFTSDU3,
                        pdfName: kPdfTSDU3)),
                buttonDRDU(
                    kButton4TextTSDU,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSDU4,
                        pdfAssetNamed: assetPDFTSDU4,
                        pdfName: kPdfTSDU4)),
                buttonDRDU(
                    kButton5TextTSDU,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSDU5,
                        pdfAssetNamed: assetPDFTSDU5,
                        pdfName: kPdfTSDU5)),
                buttonDRDU(
                    kButton6TextTSDU,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSDU6,
                        pdfAssetNamed: assetPDFTSDU6,
                        pdfName: kPdfTSDU6)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonDRDU(String buttonText, Function function) {
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

  Container _textTSDU(String text) {
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
