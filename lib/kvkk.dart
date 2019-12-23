import 'dart:io';
import 'package:first_app/main.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

Container _textKVKK() {
  return Container(
    //Burası hoşuma gitmedi incelemek lazım.10 olarak değil otomatik olarak getirtmek lazım
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    color: Colors.grey[300],
    child: Text(
      'KİŞİSEL VERİLERİN KORUNMASI',
      style: TextStyle(
        color: Colors.black,
        fontSize: 27,
      ),
    ),
  );
}
// }

class Kvkk extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Kvkk> {
  String assetPDFPath1 = "";
  String assetPDFPath2 = "";
  String assetPDFPath3 = "";
  String assetPDFPath4 = "";
  String assetPDFPath5 = "";
  String assetPDFPath6 = "";
  String assetPDFPath7 = "";
  String assetPDFPath8 = "";

  @override
  void initState() {
    super.initState();

    getFileFromAsset1("images/kvkk1.pdf").then((f) {
      setState(() {
        assetPDFPath1 = f.path;
      });
    });
    getFileFromAsset2("images/kvkk2.pdf").then((f) {
      setState(() {
        assetPDFPath2 = f.path;
      });
    });
    getFileFromAsset3("images/kvkk3.pdf").then((f) {
      setState(() {
        assetPDFPath3 = f.path;
      });
    });
    getFileFromAsset4("images/kvkk4.pdf").then((f) {
      setState(() {
        assetPDFPath4 = f.path;
      });
    });
    getFileFromAsset5("images/kvkk5.pdf").then((f) {
      setState(() {
        assetPDFPath5 = f.path;
      });
    });
    getFileFromAsset6("images/kvkk6.pdf").then((f) {
      setState(() {
        assetPDFPath6 = f.path;
      });
    });
    getFileFromAsset7("images/kvkk7.pdf").then((f) {
      setState(() {
        assetPDFPath7 = f.path;
      });
    });
    getFileFromAsset8("images/kvkk8.pdf").then((f) {
      setState(() {
        assetPDFPath8 = f.path;
      });
    });
  }

  Future<File> getFileFromAsset1(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/kvkk1.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  Future<File> getFileFromAsset2(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/kvkk2.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  Future<File> getFileFromAsset3(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/kvkk3.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  Future<File> getFileFromAsset4(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/kvkk4.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  Future<File> getFileFromAsset5(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/kvkk5.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  Future<File> getFileFromAsset6(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/kvkk6.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  Future<File> getFileFromAsset7(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/kvkk7.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  Future<File> getFileFromAsset8(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/kvkk8.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NewDrawer(),
        appBar: NewAppBar(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Scrollbar(
            child: SingleChildScrollView(
              child: Builder(
                builder: (context) => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _textKVKK(),
                    RaisedButton(
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PAKSAN KİŞİSEL VERİLERİN İŞLENMESİ VE KORUNMASI POLİTİKASI",
                        ),
                      ),
                      onPressed: () {
                        if (assetPDFPath1 != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath1)));
                        }
                      },
                    ),
                    RaisedButton(
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PAKSAN KVKK TEDARİKÇİ&TAŞERON ÇALIŞANI AYDINLATMA METNİ",
                        ),
                      ),
                      onPressed: () {
                        if (assetPDFPath2 != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath2)));
                        }
                      },
                    ),
                    RaisedButton(
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PAKSAN KVKK TEDARİKÇİ AYDINLATMA METNİ",
                        ),
                      ),
                      onPressed: () {
                        if (assetPDFPath3 != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath3)));
                        }
                      },
                    ),
                    RaisedButton(
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PAKSAN KVKK RIZA METNİ",
                        ),
                      ),
                      onPressed: () {
                        if (assetPDFPath4 != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath4)));
                        }
                      },
                    ),
                    RaisedButton(
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PAKSAN KVKK PERSONEL AYDINLATMA METNİ",
                        ),
                      ),
                      onPressed: () {
                        if (assetPDFPath5 != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath5)));
                        }
                      },
                    ),
                    RaisedButton(
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PAKSAN KVKK MÜŞTERİ AYDINLATMA METNİ",
                        ),
                      ),
                      onPressed: () {
                        if (assetPDFPath6 != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath6)));
                        }
                      },
                    ),
                    RaisedButton(
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PAKSAN KVKK İŞ BAŞVURUSU ADAY PERSONEL AYDINLATMA METNİ",
                        ),
                      ),
                      onPressed: () {
                        if (assetPDFPath7 != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath7)));
                        }
                      },
                    ),
                    RaisedButton(
                      color: Colors.grey,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PAKSAN KVKK VERİ SAHİBİ BAŞVURU FORMU",
                        ),
                      ),
                      onPressed: () {
                        if (assetPDFPath8 != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath8)));
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PdfViewPage extends StatefulWidget {
  final String path;

  const PdfViewPage({Key key, this.path}) : super(key: key);
  @override
  _PdfViewPageState createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  int _totalPages = 0;
  int _currentPage = 0;
  bool pdfReady = false;
  PDFViewController _pdfViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Document"),
      ),
      body: Stack(
        children: <Widget>[
          PDFView(
            filePath: widget.path,
            autoSpacing: true,
            enableSwipe: true,
            pageSnap: true,
            swipeHorizontal: true,
            nightMode: false,
            onError: (e) {
              print(e);
            },
            onRender: (_pages) {
              setState(() {
                _totalPages = _pages;
                pdfReady = true;
              });
            },
            onViewCreated: (PDFViewController vc) {
              _pdfViewController = vc;
            },
            onPageChanged: (int page, int total) {
              setState(() {});
            },
            onPageError: (page, e) {},
          ),
          !pdfReady
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Offstage()
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _currentPage > 0
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.red,
                  label: Text("Go to ${_currentPage - 1}"),
                  onPressed: () {
                    _currentPage -= 1;
                    _pdfViewController.setPage(_currentPage);
                  },
                )
              : Offstage(),
          _currentPage + 1 < _totalPages
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.green,
                  label: Text("Go to ${_currentPage + 1}"),
                  onPressed: () {
                    _currentPage += 1;
                    _pdfViewController.setPage(_currentPage);
                  },
                )
              : Offstage(),
        ],
      ),
    );
  }
}
