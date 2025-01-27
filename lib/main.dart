import 'package:flutter/material.dart';

void main() {
  runApp(Chronicles());
}

class Chronicles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Bello Globo'),
          ),
        ),
      ),
    );
  }
}
