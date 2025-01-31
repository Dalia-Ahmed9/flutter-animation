// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutteranimations/transition_animation/models/location.dart';

// class LocationWidget extends StatefulWidget {
//   final Location location;

//   const LocationWidget({
//     required this.location,
//     Key key,
//   }) : super(key: key);

//   @override
//   _LocationWidgetState createState() => _LocationWidgetState();
// }

// class _LocationWidgetState extends State<LocationWidget> {
//   bool isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 4),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//          // AnimatedPositioned(
//             // duration: const Duration(milliseconds: 500),
//             // bottom: isExpanded ? 40 : 100,
//             // width: isExpanded ? size.width * 0.78 : size.width * 0.7,
//             // height: isExpanded ? size.height * 0.6 : size.height * 0.5,
//             //child: ExpandedContentWidget(location: widget.location),
//           ),
//           AnimatedPositioned(
//             duration: const Duration(milliseconds: 500),
//             bottom: isExpanded ? 150 : 100,
//             child: GestureDetector(
//               onPanUpdate: onPanUpdate,
//               onTap: () {},
//              // child: ImageWidget(location: widget.location),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void onPanUpdate(DragUpdateDetails details) {
//     if (details.delta.dy < 0) {
//       setState(() {
//         isExpanded = true;
//       });
//     } else if (details.delta.dy > 0) {
//       setState(() {
//         isExpanded = false;
//       });
//     }
//   }
// }
