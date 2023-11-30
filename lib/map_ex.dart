import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
void main(){
  runApp(MaterialApp(home: MapSample(),));
}
class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng( 10.026617,76.308411),
    zoom: 14.4746,
  );

  static const CameraPosition _finalPosition = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(25.197525, 55.274288),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _initialPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goTonextLocation,
        label: const Text('To the Next Location!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goTonextLocation() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_finalPosition));
  }
}