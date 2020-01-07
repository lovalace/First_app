import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/pdfviewPage.dart';
import 'package:first_app/constants.dart';

class ZiraiKredilendirmeYemKarma extends StatelessWidget {
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
                _textZKYemKarma(kTextZKYemKarma),
                buttonZKYemKarma(
                    kButton1TextZKYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKYemKarma1,
                        pdfAssetNamed: assetPDFZKYemKarma1,
                        pdfName: kPdfZKYemKarma1)),
                buttonZKYemKarma(
                    kButton2TextZKYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKYemKarma2,
                        pdfAssetNamed: assetPDFZKYemKarma2,
                        pdfName: kPdfZKYemKarma2)),
                buttonZKYemKarma(
                    kButton3TextZKYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKYemKarma3,
                        pdfAssetNamed: assetPDFZKYemKarma3,
                        pdfName: kPdfZKYemKarma3)),
                buttonZKYemKarma(
                    kButton4TextZKYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKYemKarma4,
                        pdfAssetNamed: assetPDFZKYemKarma4,
                        pdfName: kPdfZKYemKarma4)),
                buttonZKYemKarma(
                    kButton5TextZKYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKYemKarma5,
                        pdfAssetNamed: assetPDFZKYemKarma5,
                        pdfName: kPdfZKYemKarma5)),
                buttonZKYemKarma(
                    kButton6TextZKYemKarma,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKYemKarma6,
                        pdfAssetNamed: assetPDFZKYemKarma6,
                        pdfName: kPdfZKYemKarma6)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonZKYemKarma(String buttonText, Function function) {
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

  Container _textZKYemKarma(String text) {
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
