import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Iletisim extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        Container(child:GMaps(),height: 200),
        Text('Bizi Takip Edin'),

      ] ),
    );
  }
}

class GMaps extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<GMaps> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(40.281010, 28.050420);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    
  }

  @override
  Widget build(BuildContext context) {
    return
        GoogleMap(mapToolbarEnabled: true,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 15.0,
          ),
        );
      
    
  }
}
