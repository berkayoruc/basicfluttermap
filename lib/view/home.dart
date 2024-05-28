import 'package:flutter/material.dart';
import '../widget/map.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MapWidget(),
    );
  }
}
