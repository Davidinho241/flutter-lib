import 'package:flutter/material.dart';
import 'package:lib/features/map.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Libs',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MapLib(),
    );
  }
}