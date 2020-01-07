import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/pdfviewPage.dart';
import 'package:first_app/constants.dart';

class TeknikSartnamelerYemKarmaMakinesi extends StatelessWidget {
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
                _textTSYemKarma(kTextTSYemKarma),
                buttonTSYemKarma(
                    kButton1TextTSYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSYemKarma1,
                        pdfAssetNamed: assetPDFTSYemKarma1,
                        pdfName: kPdfTSYemKarma1)),
                buttonTSYemKarma(
                    kButton2TextTSYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSYemKarma2,
                        pdfAssetNamed: assetPDFTSYemKarma2,
                        pdfName: kPdfTSYemKarma2)),
                buttonTSYemKarma(
                    kButton3TextTSYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSYemKarma3,
                        pdfAssetNamed: assetPDFTSYemKarma3,
                        pdfName: kPdfTSYemKarma3)),
                buttonTSYemKarma(
                    kButton4TextTSYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSYemKarma4,
                        pdfAssetNamed: assetPDFTSYemKarma4,
                        pdfName: kPdfTSYemKarma4)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonTSYemKarma(String buttonText, Function function) {
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

  Container _textTSYemKarma(String text) {
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
