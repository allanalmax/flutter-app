import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salon_app_final/home_page.dart';

import 'geolocator_service.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

import 'home_screen.dart';

class Application extends StatefulWidget {
  const Application({key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: ((context) => ApplicationBloc()),
        child: const MaterialApp(
          home: HomePage(),
        ));
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
