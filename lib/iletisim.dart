import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';

class Iletisim extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
       endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(child: GMaps(), height: 200),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
               IconButton(
             icon:  Image.asset('images/maps.jpg'),
             color: Colors.white, 
             onPressed: () {
                 LaunchUrl(url: kUrlGoogleMaps).launchURL();
             },),
             RaisedButton(onPressed: () { 
                LaunchUrl(url: kUrlGoogleMaps).launchURL();
              },
             child: Text("Haritada Göster", style: TextStyle(color: Colors.white),),
             color: Colors.blue,
             )
            
            ],),
            TextBiziTakipEdin(),
            Row(
              children: <Widget>[
                Expanded(child: IconFaceBook()),
                Expanded(child: IconLinkedin()),
                Expanded(child: IconYoutube()),
                Expanded(child: IconInstagram()),
               
               
                Expanded(
                  child: SizedBox(),
                  flex: 5,
                ),
              ],
            ),
            TextBizeUlasin(),
            Row(
              children: <Widget>[
                Expanded(child: IconMapMarker()),
                Expanded(
                    child: Text(
                        'Bandırma – Bursa Karayolu 10. km \nBandırma / Türkiye'),
                    flex: 4),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: IconPhone()),
                Expanded(child: Text('444 9 725'), flex: 4),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: IconPhone()),
                Expanded(child:  Text('+90 266 733 90 90'), flex: 4),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: IconFax()),
                Expanded(child: Text('+90 266 733 90 99'), flex: 4),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: IconEnvelope()),
                Expanded(child: Text('paksan@paksanmakina.com.tr'), flex: 4),
              ],
            ),
       
            Container(
              padding: EdgeInsets.fromLTRB(00, 25, 00, 00),
              child: Image.network(
                'https://paksan.bandirmawebtasarim.net/images/FSon.jpg',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextBiziTakipEdin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 00),
      child: Text(
        'Bizi Takip Edin',
        style: TextStyle(
          fontSize: 23,
          wordSpacing: 0.5,
          letterSpacing: 1,
          height: 1.2,
          color: Colors.grey[600],
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class TextBizeUlasin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 00),
      child: Text(
        'Bize Ulaşın',
        style: TextStyle(
          fontSize: 23,
          wordSpacing: 0.5,
          letterSpacing: 1,
          height: 1.2,
          color: Colors.grey[600],
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class IconMapMarker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: new Icon(FontAwesomeIcons.mapMarkerAlt),
        onPressed: () {},
        color: Colors.blue[800],
        iconSize: 35,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class IconEnvelope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: new Icon(FontAwesomeIcons.envelope),
        onPressed: () {},
        color: Colors.blue[800],
        iconSize: 35,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class IconFax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: new Icon(
          FontAwesomeIcons.fax,
        ),
        onPressed: () {
          launch("tel://+902667339099");
        },
        color: Colors.blue[800],
        iconSize: 35,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class IconPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: new Icon(FontAwesomeIcons.phoneAlt),
        onPressed: () {
          launch("tel://4449725");
        },
        color: Colors.blue[800],
        iconSize: 35,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class IconPhoneDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: new Icon(FontAwesomeIcons.phoneAlt),
        onPressed: () {
          launch("tel://+902667339090");
        },
        color: Colors.blue[800],
        iconSize: 35,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class IconFaceBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: new Icon(FontAwesomeIcons.facebookSquare),
        onPressed: () {
          LaunchUrl(url: kUrlFacebook).launchURL();
        },
        color: Colors.blue[800],
        iconSize: 35,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class IconYoutube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: new Icon(FontAwesomeIcons.youtubeSquare),
        onPressed: () {
          LaunchUrl(url: kUrlYoutube).launchURL();
        },
        color: Colors.red[800],
        iconSize: 35,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class IconInstagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: new Icon(FontAwesomeIcons.instagram),
        onPressed: () {
          LaunchUrl(url: kUrlInstagram).launchURL();
        },
        color: Colors.black87,
        iconSize: 35,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}


//IconGoogleMaps
class IconGoogleMaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: new Icon(FontAwesomeIcons.map,),
        onPressed: () {
          LaunchUrl(url: kUrlGoogleMaps).launchURL();
        },
        color: Colors.black87,
        iconSize: 35,
      ),
      alignment: Alignment.center,
    );
  }
}

class LaunchUrl {
  String url;
  LaunchUrl({@required this.url});
  launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class IconLinkedin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: new Icon(FontAwesomeIcons.linkedin),
        onPressed: () {
          LaunchUrl(url: kUrlLinkedin).launchURL();
        },
        color: Colors.blue[800],
        iconSize: 35,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class GMaps extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<GMaps> {
  GoogleMapController mapController;
  @override
  void initState() {
    _onMapCreated(mapController);
    super.initState();
  }

  final LatLng _center = const LatLng(40.281226, 28.050359);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }



  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapToolbarEnabled: true,    
      mapType: MapType.normal,      
      // onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 18.0,
      ),
    );
  }
}
