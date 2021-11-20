import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestaurantMaps extends StatefulWidget {
  RestaurantMaps({Key? key}) : super(key: key);

  @override
  _RestaurantMapsState createState() => _RestaurantMapsState();
}

class _RestaurantMapsState extends State<RestaurantMaps> {

  static const _initialCameraPosition = CameraPosition(
    target: LatLng(6.9192, 79.8501),
    zoom: 11.5,
    );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition:_initialCameraPosition,
        ),
    );
  }
}