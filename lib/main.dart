import 'package:flutter/material.dart';
import 'src/screens/HomeUI.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lib',
      home: HomeUI(),
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.greenAccent),
      debugShowCheckedModeBanner: false,
    );
  }
}
