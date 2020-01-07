import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';
import 'package:first_app/pdfviewPage.dart';

class DeneyRaporlariSuper8002 extends StatelessWidget {
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
                _textS8002(ktextSuper8002),
                buttonS8002(
                    kButton1TextSuper8002,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetS8002_1,
                        pdfAssetNamed: assetPDFS8002_1,
                        pdfName: kPdfS8002_1)),
                buttonS8002(
                    kButton2TextSuper8002,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetS8002_2,
                        pdfAssetNamed: assetPDFS8002_2,
                        pdfName: kPdfS8002_2)),
                buttonS8002(
                    kButton3TextSuper8002,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetS8002_3,
                        pdfAssetNamed: assetPDFS8002_3,
                        pdfName: kPdfS8002_3)),
                buttonS8002(
                    kButton4TextSuper8002,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetS8002_4,
                        pdfAssetNamed: assetPDFS8002_4,
                        pdfName: kPdfS8002_4)),
                buttonS8002(
                    kButton5TextSuper8002,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetS8002_5,
                        pdfAssetNamed: assetPDFS8002_5,
                        pdfName: kPdfS8002_5)),
                buttonS8002(
                    kButton6TextSuper8002,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetS8002_6,
                        pdfAssetNamed: assetPDFS8002_6,
                        pdfName: kPdfS8002_6)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonS8002(String buttonText, Function function) {
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

  Container _textS8002(String text) {
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
