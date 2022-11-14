//main.dart

import 'dart:async';
import 'package:location/location.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.5207, 127.1215),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.5207, 127.1215),
      tilt: 59.440717697143555,
      zoom: 40.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        circles: circles,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goMyLocation,
        label: Text('Go my Location'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  Future<void> _goMyLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;
    _locationData = await location.getLocation();
    print(_locationData);
    final CameraPosition _park = CameraPosition(
        target: LatLng(_locationData.latitude as double,
            _locationData.longitude as double),
        zoom: 17.151926040649414);
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_park));
    setState(() {
      circles = Set.from([
        Circle(
          circleId: CircleId("1"),
          center: LatLng(_locationData.latitude as double,
              _locationData.longitude as double),
          radius: 200,
        )
      ]);
    });
  }

  Set<Circle> circles = {};
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blueGrey,
//       ),
//       home: const MyHomePage(title: 'test'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   double sideLength = 50;
//   double sideLength2 = 50;
//   double sideLength3 = 50;
//   double sideLength4 = 50;
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Column(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Flexible(
//               child: Container(
//                   height: 300,
//                   color: Color.fromARGB(255, 152, 197, 235),
//                   child: Row(children: [
//                     Container(
//                       height: 300,
//                       width: 50,
//                     ),
//                     InkWell(
//                       child: Image.asset(
//                         "assets/images/home.png",
//                         height: sideLength,
//                         width: sideLength,
//                       ),
//                       onTap: () {
//                         setState(() {
//                           if (sideLength == 50) {
//                             sideLength = 100;
//                           }
//                         });
//                         print(" on tap ");
//                       },
//                       onDoubleTap: () {
//                         setState(() {
//                           if (sideLength == 100) {
//                             sideLength = 50;
//                           }
//                         });
//                         print(" on Double Tap ");
//                       },
//                     ),
//                     Container(
//                       height: 300,
//                       width: 70,
//                     ),
//                     Expanded(
//                       child: Text("Online Shopping",
//                           style: TextStyle(fontSize: 30, color: Colors.white)),
//                     )
//                   ])),
//             ),
//             Flexible(
//                 child: Container(
//                     height: 300,
//                     color: Colors.lightBlueAccent,
//                     child: Row(
//                       children: [
//                         Container(
//                           height: 300,
//                           width: 50,
//                         ),
//                         InkWell(
//                           child: Image.asset(
//                             "assets/images/bucket.png",
//                             height: sideLength2,
//                             width: sideLength2,
//                           ),
//                           onTap: () {
//                             setState(() {
//                               if (sideLength2 == 50) {
//                                 sideLength2 = 100;
//                               }
//                             });
//                             print(" on tap ");
//                           },
//                           onDoubleTap: () {
//                             setState(() {
//                               if (sideLength2 == 100) {
//                                 sideLength2 = 50;
//                               }
//                             });
//                             print(" on Double Tap ");
//                           },
//                         ),
//                         Container(
//                           height: 300,
//                           width: 70,
//                         ),
//                         Expanded(
//                           child: Text("Add to Cart",
//                               style:
//                                   TextStyle(fontSize: 30, color: Colors.white)),
//                         )
//                       ],
//                     ))),
//             Flexible(
//                 child: Container(
//                     height: 300,
//                     color: Color.fromARGB(255, 46, 108, 167),
//                     child: Row(
//                       children: [
//                         Container(
//                           height: 300,
//                           width: 50,
//                         ),
//                         InkWell(
//                           child: Image.asset(
//                             "assets/images/card.png",
//                             height: sideLength3,
//                             width: sideLength3,
//                           ),
//                           onTap: () {
//                             setState(() {
//                               if (sideLength3 == 50) {
//                                 sideLength3 = 100;
//                               }
//                             });
//                             print(" on tap ");
//                           },
//                           onDoubleTap: () {
//                             setState(() {
//                               if (sideLength3 == 100) {
//                                 sideLength3 = 50;
//                               }
//                             });
//                             print(" on Double Tap ");
//                           },
//                         ),
//                         Container(
//                           height: 300,
//                           width: 70,
//                         ),
//                         Expanded(
//                           child: Text("Secure Payments",
//                               style:
//                                   TextStyle(fontSize: 30, color: Colors.white)),
//                         )
//                       ],
//                     ))),
//             Flexible(
//                 child: Container(
//                     height: 300,
//                     color: Color.fromARGB(255, 26, 80, 182),
//                     child: Row(
//                       children: [
//                         Container(
//                           height: 300,
//                           width: 50,
//                         ),
//                         InkWell(
//                           child: Image.asset(
//                             "assets/images/truck.png",
//                             height: sideLength4,
//                             width: sideLength4,
//                           ),
//                           onTap: () {
//                             setState(() {
//                               if (sideLength4 == 50) {
//                                 sideLength4 = 100;
//                               }
//                             });
//                             print(" on tap ");
//                           },
//                           onDoubleTap: () {
//                             setState(() {
//                               if (sideLength4 == 100) {
//                                 sideLength4 = 50;
//                               }
//                             });
//                             print(" on Double Tap ");
//                           },
//                         ),
//                         Container(
//                           height: 300,
//                           width: 70,
//                         ),
//                         Expanded(
//                           child: Text("Fast Delivery",
//                               style:
//                                   TextStyle(fontSize: 30, color: Colors.white)),
//                         )
//                       ],
//                     ))),
//           ],
//         ));
//   }
// }

// class Flexibla {}
