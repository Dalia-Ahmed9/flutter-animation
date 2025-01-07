import 'package:flutter/material.dart';

class Animated_Container extends StatefulWidget {
  const Animated_Container({super.key});

  @override
  State<Animated_Container> createState() => _Animated_ContainerState();
}

class _Animated_ContainerState extends State<Animated_Container> {
  bool isBig = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Containr'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Please press here ',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isBig = !isBig;
                });
              },
              child: AnimatedContainer(
                duration: Duration(
                  seconds: 1,
                ),
                width: isBig ? 200 : 100,
                height: isBig ? 200 : 100,
                color: isBig ? Colors.blueAccent : Colors.deepOrangeAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
