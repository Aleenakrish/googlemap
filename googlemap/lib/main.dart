import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  late GoogleMapController mapController;
  final LatLng _center = LatLng(9.9312, 76.2673);

  void _onmapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.green[700]),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Google map"),
          ),
        ),
        body: GoogleMap(
            onMapCreated: _onmapCreated,
            markers: new Set<Marker>(),
            initialCameraPosition: CameraPosition(target: _center, zoom: 11.0)),
      ),
    );
  }
}
