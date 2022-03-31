import 'package:flutter/material.dart';
import '../widgets/buttons.dart';
import '../widgets/cards.dart';
import 'MapUI.dart';

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
      appBar: AppBar(
        title: const Text('Home Lib'),
        backgroundColor: Colors.red[700],
      ),
      key: _scaffoldKey,
      body: Container(
        alignment: Alignment.center,
        height: double.maxFinite,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              MainButton(
                  title: "Open the map",
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MapUI()),
                    );
                  },
                  icon: Icons.map_outlined,
                  color: Colors.greenAccent),
              SizedBox(height: 20.0),
              MainButton(
                  title: "Open the card",
                  onTap: () async {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: const Color(0xFFFFFF),
                        builder: (BuildContext context) {
                          return new BestOfferCards(
                            onTap: null,
                          );
                        });
                  },
                  icon: Icons.chrome_reader_mode_outlined,
                  color: Colors.greenAccent),
            ],
          ),
        ),
      ),
    );
  }
}
