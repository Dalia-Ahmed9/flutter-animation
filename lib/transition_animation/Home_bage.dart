import 'package:flutter/material.dart';

class HomeBage extends StatelessWidget {
  const HomeBage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(' transition animation'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.location_pin)),
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ),
    );
  }
}

Widget BuildAppBar() => AppBar();
