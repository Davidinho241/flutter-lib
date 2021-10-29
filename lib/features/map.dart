import 'package:flutter/material.dart';
import 'dart:async';
import 'package:geocoding/geocoding.dart' hide Location;
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lib/src/locations.dart' as locations;

class MapLib extends StatefulWidget {
  @override
  _MapLibState createState() => _MapLibState();
}

class _MapLibState extends State<MapLib> {
  final Map<String, Marker> _markers = {};
  Location location = Location();
  GoogleMapController _controller;
  LatLng _initialCameraPosition = LatLng(0.5937, 0.9629);
  LocationData _currentPosition;
  String _currentAddress;

  @override
  void initState() {
    super.initState();
    getLoc();
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    //position to the current location of the device on launch

    _controller = controller;
    location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude, l.longitude), zoom: 15),
        ),
      );
    });

    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  getLoc() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _currentPosition = await location.getLocation();
    _initialCameraPosition = LatLng(_currentPosition.latitude, _currentPosition.longitude);
    location.onLocationChanged.listen((LocationData currentLocation) {
      print("${currentLocation.longitude} : ${currentLocation.longitude}");
      setState(() {
        _currentPosition = currentLocation;
        _initialCameraPosition = LatLng(_currentPosition.latitude, _currentPosition.longitude);
        _getAddressFromLatLng();
      });
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> placeMarkers = await placemarkFromCoordinates(
          _currentPosition.latitude,
          _currentPosition.longitude
      );

      Placemark place = placeMarkers[0];

      setState(() {
        _currentAddress = "${place.locality}, ${place.postalCode}, ${place.country}";
        _markers["Current Position"] = Marker(
          markerId: MarkerId(place.name),
          position: LatLng(_currentPosition.latitude, _currentPosition.longitude),
          infoWindow: InfoWindow(
            title: place.name,
            snippet: _currentAddress,
          ),
        );
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Google Map Flutter Lib'),
          backgroundColor: Colors.red[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(target: _initialCameraPosition, zoom: 15),
          markers: _markers.values.toSet(),
          myLocationEnabled: true,
        ),
      ),
    );
  }
}
