import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late MapController mapController;

  List<Marker> getMarkers() {
    return [
      Marker(
        width: 30,
        height: 30,
        point: LatLng(41.1277837, 28.8125302),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(8),
          child: FlutterLogo(),
        ),
      ),
      Marker(
        width: 30,
        height: 30,
        point: LatLng(41.0973412, 29.0005743),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(8),
          child: FlutterLogo(),
        ),
      ),
      Marker(
        width: 30,
        height: 30,
        point: LatLng(40.9239525, 29.1231561),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(8),
          child: FlutterLogo(),
        ),
      ),
    ];
  }

  @override
  void initState() {
    mapController = MapController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        initialCenter: LatLng(41, 29),
        initialZoom: 8.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: ['a', 'b', 'c'],
        ),
        MarkerLayer(
          markers: getMarkers(),
        ),
      ],
    );
  }
}
