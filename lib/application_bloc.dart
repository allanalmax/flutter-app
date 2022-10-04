import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'geolocator_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

import 'home_screen.dart';

class Application extends StatefulWidget {
  const Application({Key key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
   Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:((context) => ApplicationBloc()),
      child : const MaterialApp(
      home: HomeScreen(),
    )
    );
  }
}


class ApplicationBloc with ChangeNotifier {
  final geoLocatorService = GeolocatorService();

  Position currentLocation;

  ApplicationBloc() {
    setCurrentLocation();
  }

  setCurrentLocation() async {
    currentLocation = await geoLocatorService.getCurrentLocation();
    notifyListeners();
  }
}

