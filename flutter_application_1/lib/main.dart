import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double sideLength = 50;
  double sideLength2 = 50;
  double sideLength3 = 50;
  double sideLength4 = 50;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                  height: 300,
                  color: Color.fromARGB(255, 152, 197, 235),
                  child: Row(children: [
                    Container(
                      height: 300,
                      width: 50,
                    ),
                    InkWell(
                      child: Image.asset(
                        "assets/images/home.png",
                        height: sideLength,
                        width: sideLength,
                      ),
                      onTap: () {
                        setState(() {
                          if (sideLength == 50) {
                            sideLength = 100;
                          }
                        });
                        print(" on tap ");
                      },
                      onDoubleTap: () {
                        setState(() {
                          if (sideLength == 100) {
                            sideLength = 50;
                          }
                        });
                        print(" on Double Tap ");
                      },
                    ),
                    Container(
                      height: 300,
                      width: 70,
                    ),
                    Expanded(
                      child: Text("Online Shopping",
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                    )
                  ])),
            ),
            Flexible(
                child: Container(
                    height: 300,
                    color: Colors.lightBlueAccent,
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                          width: 50,
                        ),
                        InkWell(
                          child: Image.asset(
                            "assets/images/bucket.png",
                            height: sideLength2,
                            width: sideLength2,
                          ),
                          onTap: () {
                            setState(() {
                              if (sideLength2 == 50) {
                                sideLength2 = 100;
                              }
                            });
                            print(" on tap ");
                          },
                          onDoubleTap: () {
                            setState(() {
                              if (sideLength2 == 100) {
                                sideLength2 = 50;
                              }
                            });
                            print(" on Double Tap ");
                          },
                        ),
                        Container(
                          height: 300,
                          width: 70,
                        ),
                        Expanded(
                          child: Text("Add to Cart",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                        )
                      ],
                    ))),
            Flexible(
                child: Container(
                    height: 300,
                    color: Color.fromARGB(255, 46, 108, 167),
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                          width: 50,
                        ),
                        InkWell(
                          child: Image.asset(
                            "assets/images/card.png",
                            height: sideLength3,
                            width: sideLength3,
                          ),
                          onTap: () {
                            setState(() {
                              if (sideLength3 == 50) {
                                sideLength3 = 100;
                              }
                            });
                            print(" on tap ");
                          },
                          onDoubleTap: () {
                            setState(() {
                              if (sideLength3 == 100) {
                                sideLength3 = 50;
                              }
                            });
                            print(" on Double Tap ");
                          },
                        ),
                        Container(
                          height: 300,
                          width: 70,
                        ),
                        Expanded(
                          child: Text("Secure Payments",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                        )
                      ],
                    ))),
            Flexible(
                child: Container(
                    height: 300,
                    color: Color.fromARGB(255, 26, 80, 182),
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                          width: 50,
                        ),
                        InkWell(
                          child: Image.asset(
                            "assets/images/truck.png",
                            height: sideLength4,
                            width: sideLength4,
                          ),
                          onTap: () {
                            setState(() {
                              if (sideLength4 == 50) {
                                sideLength4 = 100;
                              }
                            });
                            print(" on tap ");
                          },
                          onDoubleTap: () {
                            setState(() {
                              if (sideLength4 == 100) {
                                sideLength4 = 50;
                              }
                            });
                            print(" on Double Tap ");
                          },
                        ),
                        Container(
                          height: 300,
                          width: 70,
                        ),
                        Expanded(
                          child: Text("Fast Delivery",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                        )
                      ],
                    ))),
            Container(
              height: 100,
              width: 70,
            ),
          ],
        ));
  }
}

class Flexibla {}
