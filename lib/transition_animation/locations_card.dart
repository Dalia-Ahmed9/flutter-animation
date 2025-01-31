import 'package:flutter/material.dart';

class Locations_Card extends StatelessWidget {
  const Locations_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) => Placeholder(),
    );
  }
}
