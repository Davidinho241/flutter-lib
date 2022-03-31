import 'package:flutter/material.dart';

// Used in Login & Register
class MainButton extends StatelessWidget {
  final String title;
  final double height;
  final GestureTapCallback? onTap;
  final IconData icon;
  final Color color;
  final double size;

  MainButton({required this.title, this.height = 30.0, required this.onTap, required this.icon, required this.color, this.size = 123.0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 20.0),
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
        child: SizedBox(
          width: size,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$title",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.0,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                icon,
                size: 25.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
