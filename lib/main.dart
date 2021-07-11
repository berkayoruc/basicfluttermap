import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Marker> getMarkers() {
    return [
      Marker(
        width: 40.0,
        height: 40.0,
        point: LatLng(41.1277837, 28.8125302),
        builder: (ctx) => Container(
          child: FlutterLogo(),
        ),
      ),
      Marker(
        width: 40.0,
        height: 40.0,
        point: LatLng(41.0973412, 29.0005743),
        builder: (ctx) => Container(
          child: FlutterLogo(),
        ),
      ),
      Marker(
        width: 40.0,
        height: 40.0,
        point: LatLng(40.9239525, 29.3231561),
        builder: (ctx) => Container(
          child: FlutterLogo(),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(41, 29),
          zoom: 8.0,
        ),
        layers: [
          TileLayerOptions(
              urlTemplate:
                  "https://stamen-tiles.a.ssl.fastly.net/watercolor/{z}/{x}/{y}.jpg",
              subdomains: ['a', 'b', 'c']),
          MarkerLayerOptions(markers: getMarkers())
        ],
      ),
    );
  }
}
