import 'package:flutter/material.dart';

import 'https://flutlab.io/root/app/lib/src/screens/HomeUI.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lib',
      home: HomeUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}
