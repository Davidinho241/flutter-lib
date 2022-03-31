import 'package:flutter/material.dart';

class CustomModal {
  static loading(BuildContext context, String title) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          height: 100.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("$title"),
                SizedBox(
                  height: 10.0,
                ),
                LinearProgressIndicator(),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
