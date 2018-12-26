import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'Drawer.dart';

class GoogleMaps extends StatefulWidget {
  @override
  _GoogleMapsState createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  ///
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DWidget(),
      appBar: AppBar(
        title: const Text('Flutter Maps'),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            onMapCreated: _onMapCreated,
          )),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    /// Google Mapsを作成する
    setState(() {
      mapController = controller;

      var position = new LatLng(35.6580339, 139.7016358);
      _updateMarker(position);
      _updateCameraPosition(position);
    });
  }

  void _updateMarker(LatLng latLng) {
    var options = MarkerOptions(position: latLng);
    setState(() {
      mapController.addMarker(options);
    });
  }

  void _updateCameraPosition(LatLng position) {
    mapController.moveCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: position, zoom: 17.0)));
  }
}
