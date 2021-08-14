import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';

abstract class MyLocation {
  Future initialize();
  Future<Position> getLocation([LocationAccuracy accuracy]);
  Stream<Position> streamLocation([LocationAccuracy accuracy]);
  double getRadius(double startLatitude, double startLongitude, double endLatitude, double endLongitude);
}

class MyLocationImpl extends GetxService implements MyLocation {
  @override
  void onInit() {
    initialize();
    super.onInit();
  }

  @override
  Future<Position> getLocation([LocationAccuracy accuracy = LocationAccuracy.best]) async {
    if (!(await Geolocator.isLocationServiceEnabled())) {
      Get.showSnackbar(GetBar(
        message: "GPS Tidak Aktif",
        mainButton: FlatButton(
          child: Text(
            "Confirm",
            style: GoogleFonts.roboto(color: Colors.amber),
          ),
          onPressed: () => null,
        ),
        icon: Icon(
          Icons.gps_off,
          color: Colors.white,
        ),
      ));
      return null;
    }
    print("Get Location");
    return Geolocator.getCurrentPosition(desiredAccuracy: accuracy).timeout(Duration(seconds: 10), onTimeout: () => null);
  }

  @override
  Future initialize() async {
    final _serv = await Geolocator.isLocationServiceEnabled();
    if (_serv) {
      final permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        final dataRequest = await Geolocator.requestPermission();
        print(dataRequest);
      }
      // final permission = Get.find<MyPermission>();
      // await permission.requestLocation();
    }
  }

  @override
  Stream<Position> streamLocation([LocationAccuracy accuracy = LocationAccuracy.best]) {
    return Geolocator.getPositionStream(desiredAccuracy: accuracy);
  }

  @override
  double getRadius(double startLatitude, double startLongitude, double endLatitude, double endLongitude) {
    return Geolocator.distanceBetween(startLatitude, startLongitude, endLatitude, endLongitude);
  }
}
