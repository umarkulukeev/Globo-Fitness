import 'package:flutter/material.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Globo Fitness')),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bmw.jpg'),
              fit: BoxFit.cover,
            )
          ),
          child: Center(
            child: Text(
                'Commit the great all')
          ),
        ),
      ),
    );
  }
}

