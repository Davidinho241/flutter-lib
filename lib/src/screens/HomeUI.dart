import 'package:flutter/material.dart';
import '../widgets/buttons.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        height: double.maxFinite,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              MainButton(title: "Open the map", onTap: () async {}, icon: Icons.map_outlined, color: Colors.greenAccent),
              SizedBox(width: 10.0),
              MainButton(title: "Open the dialog", onTap: () async {}, icon: Icons.chrome_reader_mode_outlined, color: Colors.greenAccent),
            ],
          ),
        ),
      ),
    );
  }
}
