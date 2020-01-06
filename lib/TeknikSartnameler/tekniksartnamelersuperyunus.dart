import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/kvkk.dart';
import 'package:first_app/constants.dart';

class TeknikSartnamelerSuperYunusBalyaMakinesi extends StatelessWidget {
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
                _textTSYunus(kTextTSYunus),
                buttonTSYunus(
                    kButton1TextTSYunus,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSYunus1,
                        pdfAssetNamed: assetPDFTSYunus1,
                        pdfName: kPdfTSYunus1)),
                buttonTSYunus(
                    kButton2TextTSYunus,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSYunus2,
                        pdfAssetNamed: assetPDFTSYunus2,
                        pdfName: kPdfTSYunus2)),
                buttonTSYunus(
                    kButton3TextTSYunus,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSYunus3,
                        pdfAssetNamed: assetPDFTSYunus3,
                        pdfName: kPdfTSYunus3)),
                buttonTSYunus(
                    kButton4TextTSYunus,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSYunus4,
                        pdfAssetNamed: assetPDFTSYunus4,
                        pdfName: kPdfTSYunus4)),
                buttonTSYunus(
                    kButton5TextTSYunus,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetTSYunus5,
                        pdfAssetNamed: assetPDFTSYunus5,
                        pdfName: kPdfTSYunus5)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonTSYunus(String buttonText, Function function) {
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

  Container _textTSYunus(String text) {
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
