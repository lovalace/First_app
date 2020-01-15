// import 'package:flutter/material.dart';
// import 'package:flutter/src/gestures/tap.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:first_app/main.dart';

// class Pdfdownload extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NewDrawer(),
//       appBar: NewAppBar(),
//       backgroundColor: Colors.white,
//       body: Scrollbar(
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//             SizedBox(height: 50,),
//              new RichText(
//               text: new LinkTextSpan(
//                   style: TextStyle(color: Colors.red),
//                   url: 'http://www.africau.edu/images/default/sample.pdf',
//                   text: 'Göster'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//   class LinkTextSpan extends TextSpan {
//   LinkTextSpan({TextStyle style, String url, String text})
//       : super(
//       style: style,
//       text: text ?? url,
//       recognizer: new TapGestureRecognizer()
//         ..onTap = () {
//           launch(url);
//         });

// }


