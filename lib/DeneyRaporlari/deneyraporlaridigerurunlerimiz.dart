import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/kvkk.dart';
import 'package:first_app/constants.dart';

class DeneyRaporlariDigerUrunlerimiz extends StatelessWidget {
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
                _textDRDU('DENEY RAPORLARI DİĞER ÜRÜNLERİMİZ'),
                _buttonDRDU(
                    'ÇEKİÇ 14.03.2023',
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetCekic,
                        pdfAssetNamed: assetPDFCekic,
                        pdfName: kPdfCekic)),
                _buttonDRDU(
                    'KIRLANGIÇ OT TOPLAM TIRMIĞI 02.10.2024',
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetKirlangic,
                        pdfAssetNamed: assetPDFKirlangic,
                        pdfName: kPdfKirlangic)),                        
                _buttonDRDU(
                    'ORKİNOS 870 BÜYÜK BALYA MAKİNASI DENEY RAPORU', () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetOrkinos870,
                        pdfAssetNamed: assetPDFOrkinos870,
                        pdfName: kPdfOrkinos870)),
                _buttonDRDU(
                    'ORKİNOS 6127 BÜYÜK BALYA MAKİNASI DENEY RAPORU 14.09.2020',
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetOrkinos6127,
                        pdfAssetNamed: assetPDFOrkinos6127,
                        pdfName: kPdfOrkinos6127)),
                _buttonDRDU('Yengeç 135 02.10.2024', () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetYengec135,
                        pdfAssetNamed: assetPDFYengec135,
                        pdfName: kPdfYengec135)),
                _buttonDRDU('Yengeç 165 02.10.2024', () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetYengec165,
                        pdfAssetNamed: assetPDFYengec165,
                        pdfName: kPdfYengec165)),
                _buttonDRDU('Yengeç 195 02.10.2024', () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetYengec195,
                        pdfAssetNamed: assetPDFYengec195,
                        pdfName: kPdfYengec195)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton _buttonDRDU(String buttonText, Function function) {
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

  Container _textDRDU(String text) {
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
