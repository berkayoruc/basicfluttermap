import 'package:flutter/material.dart';
import 'widget/map.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter Map Example',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MapWidget(),
    );
  }
}
