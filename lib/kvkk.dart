
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/tap.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:first_app/main.dart';

import 'constants.dart';

class Deneme01 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
            SizedBox(height: 50,),
             new RichText(
              text: new LinkTextSpan(
                  style: TextStyle(color: Colors.red),
                  url: 'http://www.africau.edu/images/default/sample.pdf',
                  text:  kButton1TextKvkk ),
              ),
              SizedBox(height: 20,),
              new RichText(
              text: new LinkTextSpan(
                  style: TextStyle(color: Colors.red),
                  url: 'http://www.africau.edu/images/default/sample.pdf',
                  text: kButton2TextKvkk),
              ),
               SizedBox(height: 20,),
              new RichText(
              text: new LinkTextSpan(
                  style: TextStyle(color: Colors.red),
                  url: 'http://www.africau.edu/images/default/sample.pdf',
                  text: kButton3TextKvkk),
              ),
               SizedBox(height: 20,),
              new RichText(
              text: new LinkTextSpan(
                  style: TextStyle(color: Colors.red),
                  url: 'http://www.africau.edu/images/default/sample.pdf',
                  text: kButton4TextKvkk),
              ),
                SizedBox(height: 20,),
              new RichText(
              text: new LinkTextSpan(
                  style: TextStyle(color: Colors.red),
                  url: 'http://www.africau.edu/images/default/sample.pdf',
                  text: kButton5TextKvkk),
              ),
                SizedBox(height: 20,),
              new RichText(
              text: new LinkTextSpan(
                  style: TextStyle(color: Colors.red),
                  url: 'http://www.africau.edu/images/default/sample.pdf',
                  text:  kButton6TextKvkk),
              ),
               SizedBox(height: 20,),
               new RichText(
              text: new LinkTextSpan(
                  style: TextStyle(color: Colors.red),
                  url: 'http://www.africau.edu/images/default/sample.pdf',
                  text:  kButton7TextKvkk),
              ),
               SizedBox(height: 20,),
               new RichText(
              text: new LinkTextSpan(
                  style: TextStyle(color: Colors.red),
                  url: 'http://www.africau.edu/images/default/sample.pdf',
                  text:  kButton8TextKvkk),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  class LinkTextSpan extends TextSpan {
  LinkTextSpan({TextStyle style, String url, String text})
      : super(
      style: TextStyle(color: Colors.black,),
      text: text ?? url,
      recognizer: new TapGestureRecognizer()
        ..onTap = () {
          launch(url);
        });

//  const String kTextKvkk = 'KİŞİSEL VERİLERİN KORUNMASI';
// const String kButton1TextKvkk = 'PAKSAN KİŞİSEL VERİLERİN İŞLENMESİ VE KORUNMASI POLİTİKASI';
// const String kButton2TextKvkk = 'PAKSAN KVKK TEDARİKÇİ&TAŞERON ÇALIŞANI AYDINLATMA METNİ';
// const String kButton3TextKvkk = 'PAKSAN KVKK TEDARİKÇİ AYDINLATMA METNİ';
// const String kButton4TextKvkk = 'PAKSAN KVKK RIZA METNİ';
// const String kButton5TextKvkk = 'PAKSAN KVKK PERSONEL AYDINLATMA METNİ';
// const String kButton6TextKvkk = 'PAKSAN KVKK MÜŞTERİ AYDINLATMA METNİ';
// const String kButton7TextKvkk = 'PAKSAN KVKK İŞ BAŞVURUSU ADAY PERSONEL AYDINLATMA METNİ';
// const String kButton8TextKvkk = 'PAKSAN KVKK VERİ SAHİBİ BAŞVURU FORMU';
}

// class Kvkk extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //drawer: NewDrawer(),
//       endDrawer: NewDrawer(),
//       appBar: NewAppBar(),
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Scrollbar(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 _textKvkk(kTextKvkk),
//                 buttonKvkk(
//                     kButton1TextKvkk,
//                     () => _pdfAc(
//                         context: context,
//                         pdfAsset: kPdfAssetKvkk1,
//                         pdfAssetNamed: assetPDFPath1,
//                         pdfName: kPdfKvkk1)),
//                 buttonKvkk(
//                     kButton2TextKvkk,
//                     () => _pdfAc(
//                         context: context,
//                         pdfAsset: kPdfAssetKvkk2,
//                         pdfAssetNamed: assetPDFPath2,
//                         pdfName: kPdfKvkk2)),
//                 buttonKvkk(
//                     kButton3TextKvkk,
//                     () => _pdfAc(
//                         context: context,
//                         pdfAsset: kPdfAssetKvkk3,
//                         pdfAssetNamed: assetPDFPath3,
//                         pdfName: kPdfKvkk3)),
//                 buttonKvkk(
//                     kButton4TextKvkk,
//                     () => _pdfAc(
//                         context: context,
//                         pdfAsset: kPdfAssetKvkk4,
//                         pdfAssetNamed: assetPDFPath4,
//                         pdfName: kPdfKvkk4)),
//                 buttonKvkk(
//                     kButton5TextKvkk,
//                     () => _pdfAc(
//                         context: context,
//                         pdfAsset: kPdfAssetKvkk5,
//                         pdfAssetNamed: assetPDFPath5,
//                         pdfName: kPdfKvkk5)),
//                 buttonKvkk(
//                     kButton6TextKvkk,
//                     () => _pdfAc(
//                         context: context,
//                         pdfAsset: kPdfAssetKvkk6,
//                         pdfAssetNamed: assetPDFPath6,
//                         pdfName: kPdfKvkk6)),
//                 buttonKvkk(
//                     kButton7TextKvkk,
//                     () => _pdfAc(
//                         context: context,
//                         pdfAsset: kPdfAssetKvkk7,
//                         pdfAssetNamed: assetPDFPath7,
//                         pdfName: kPdfKvkk7)),
//                 buttonKvkk(
//                     kButton8TextKvkk,
//                     () => _pdfAc(
//                         context: context,
//                         pdfAsset: kPdfAssetKvkk8,
//                         pdfAssetNamed: assetPDFPath8,
//                         pdfName: kPdfKvkk8)),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   RaisedButton buttonKvkk(String buttonText, Function function) {
//     return RaisedButton(
//       color: Colors.grey,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Text(
//           buttonText,
//         ),
//       ),
//       onPressed: function,
//     );
//   }

//   Container _textKvkk(String text) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
//       color: Colors.grey[300],
//       child: Text(
//         text,
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 32,
//         ),
//       ),
//     );
//   }

//   _pdfAc(
//       {BuildContext context,
//       String pdfName,
//       String pdfAsset,
//       String pdfAssetNamed}) async {
//     await GetFilesFromAssets(pdfname: pdfName)
//         .getFileFromAsset(pdfAsset)
//         .then((f) {
//       pdfAssetNamed = f.path;
//     });
//     if (pdfAssetNamed != null) {
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context) => PdfViewPage(path: pdfAssetNamed)));
//     }
//   }
// }
