import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/pdfviewPage.dart';
import 'package:first_app/constants.dart';

import '../utility.dart';

class TeknikSartnamelerSuperS8002 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _textTSS8002(kTextTSS8002),
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton1TextTSS8002),
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton2TextTSS8002),
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton3TextTSS8002),
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton4TextTSS8002),
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton5TextTSS8002),
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton6TextTSS8002),
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton7TextTSS8002),
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton8TextTSS8002),
                // buttonTSS8002(
                //     kButton1TextTSS8002,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetTSS8002_1,
                //         pdfAssetNamed: assetPDFTSS8002_1,
                //         pdfName: kPdfTSS8002_1)),
                // buttonTSS8002(
                //     kButton2TextTSS8002,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetTSS8002_2,
                //         pdfAssetNamed: assetPDFTSS8002_2,
                //         pdfName: kPdfTSS8002_2)),
                // buttonTSS8002(
                //     kButton3TextTSS8002,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetTSS8002_3,
                //         pdfAssetNamed: assetPDFTSS8002_3,
                //         pdfName: kPdfTSS8002_3)),
                // buttonTSS8002(
                //     kButton4TextTSS8002,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetTSS8002_4,
                //         pdfAssetNamed: assetPDFTSS8002_4,
                //         pdfName: kPdfTSS8002_4)),
                // buttonTSS8002(
                //     kButton5TextTSS8002,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetTSS8002_5,
                //         pdfAssetNamed: assetPDFTSS8002_5,
                //         pdfName: kPdfTSS8002_5)),
                // buttonTSS8002(
                //     kButton6TextTSS8002,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetTSS8002_6,
                //         pdfAssetNamed: assetPDFTSS8002_6,
                //         pdfName: kPdfTSS8002_6)),
                // buttonTSS8002(
                //     kButton7TextTSS8002,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetTSS8002_7,
                //         pdfAssetNamed: assetPDFTSS8002_7,
                //         pdfName: kPdfTSS8002_7)),
                // buttonTSS8002(
                //     kButton8TextTSS8002,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetTSS8002_8,
                //         pdfAssetNamed: assetPDFTSS8002_8,
                //         pdfName: kPdfTSS8002_8)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonTSS8002(String buttonText, Function function) {
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

  Container _textTSS8002(String text) {
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
