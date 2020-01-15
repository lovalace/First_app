import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';
import 'package:first_app/pdfviewPage.dart';

import '../kvkk.dart';

class SuperYunusBalyaMakinesi extends StatelessWidget {
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
                _textYunusBalya(ktextYunusBalya),   
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton1TextYunusBalya),
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf', kButton2TextYunusBalya), 
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf', kButton3TextYunusBalya), 
                // buttonYunusBalya(
                //     kButton1TextYunusBalya,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetYunusBalya1,
                //         pdfAssetNamed: assetPDFYunusBalya1,
                //         pdfName: kPdfYunusBalya1)),
                // buttonYunusBalya(
                //     kButton2TextYunusBalya,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetYunusBalya2,
                //         pdfAssetNamed: assetPDFYunusBalya2,
                //         pdfName: kPdfYunusBalya2)),
                // buttonYunusBalya(
                //     kButton3TextYunusBalya,
                //     () => _pdfAc(
                //         context: context,
                //         pdfAsset: kPdfAssetYunusBalya3,
                //         pdfAssetNamed: assetPDFYunusBalya3,
                //         pdfName: kPdfYunusBalya3)),
              ],
            ),
          ),
        ),
      ),
    );
  }

    RaisedButton pdfbutton( String url, String text ) {
    return RaisedButton(
      color: Colors.white,
      child: Align(
        alignment: Alignment.centerLeft,
          child:
           RichText(
                text: new LinkTextSpan(
                    style: TextStyle(color: Colors.red),
                    url: url,
                    text:  text),
                ),
      ), onPressed: () {},
      
    );
  }

  RaisedButton buttonYunusBalya(String buttonText, Function function) {
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

  Container _textYunusBalya(String text) {
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
