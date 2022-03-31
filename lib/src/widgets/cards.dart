import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:shimmer/shimmer.dart';

// Used at HomeUI
class BestOfferCards extends StatelessWidget {
  final GestureTapCallback? onTap;
  BestOfferCards({this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://ecomatin.net/wp-content/uploads/2018/10/ecomatin.net-reamenagement-la-poste-centrale-va-refaire-peau-neuve-poste-centrale-780x405.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(right: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Name",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "description",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          FlutterIcons.swimmer_faw5s,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        Icon(
                          FlutterIcons.smoking_ban_faw5s,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        Icon(
                          FlutterIcons.parking_faw5s,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        Icon(
                          FlutterIcons.food_variant_mco,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        Icon(
                          FlutterIcons.wifi_faw5s,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Used at HomeUI
class BestOfferCardLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Shimmer.fromColors(
        enabled: true,
        baseColor: Colors.grey[300],
        highlightColor: Colors.grey[100],
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 100.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        width: 15.00,
                        height: 15.0,
                      ),
                      Container(height: 5.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        width: 100.0,
                        height: 10.0,
                      ),
                      Container(height: 15.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        width: 60.0,
                        height: 12.0,
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        width: 70.0,
                        height: 12.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            width: 20.0,
                            height: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            width: 20.0,
                            height: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            width: 20.0,
                            height: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            width: 20.0,
                            height: 20.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            width: 20.0,
                            height: 20.0,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                width: 40.0,
                height: 120.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
