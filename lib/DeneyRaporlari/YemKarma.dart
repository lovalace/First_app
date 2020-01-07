import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';
import 'package:first_app/pdfviewPage.dart';

class YemKarmaMakinesi extends StatelessWidget {
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
                _textYemKarma(ktextYemKarma),
                buttonYemKarma(
                    kButton1TextYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetYemKarma1,
                        pdfAssetNamed: assetPDFYemKarma1,
                        pdfName: kPdfYemKarma1)),
                buttonYemKarma(
                    kButton2TextYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetYemKarma2,
                        pdfAssetNamed: assetPDFYemKarma2,
                        pdfName: kPdfYemKarma2)),
                buttonYemKarma(
                    kButton3TextYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetYemKarma3,
                        pdfAssetNamed: assetPDFYemKarma3,
                        pdfName: kPdfYemKarma3)),
                buttonYemKarma(
                    kButton4TextYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetYemKarma4,
                        pdfAssetNamed: assetPDFYemKarma4,
                        pdfName: kPdfYemKarma4)),
                buttonYemKarma(
                    kButton5TextYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetYemKarma5,
                        pdfAssetNamed: assetPDFYemKarma5,
                        pdfName: kPdfYemKarma5)),
                buttonYemKarma(
                    kButton6TextYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetYemKarma6,
                        pdfAssetNamed: assetPDFYemKarma6,
                        pdfName: kPdfYemKarma6)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonYemKarma(String buttonText, Function function) {
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

  Container _textYemKarma(String text) {
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
