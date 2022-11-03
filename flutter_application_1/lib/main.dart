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
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'sorry'),
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
  String _counter = "hi";
  void _incrementCounter() {
    setState(() {
      _counter += "@";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: 
        
        Column(
          children: [
            Flexible(child: 
            Container(
              height: 50,
              color: Colors.amber,
            )),
            Flexible(child: 
            Container(
              height: 100,
              color: Colors.blue,
            )),
            Flexible(child: 
            Container(
                height: 50,
                child:
                Row(children: [ElevatedButton( onPressed: () {  }, child: null,)
                ,Container(width: 30,color: Colors.blueGrey,)
                
                
                ],)
                
                )),
                Flexible(child: 
            Container(
              height: 100,
              color: Colors.black,
            )),
          ],
        ));
  }
}
