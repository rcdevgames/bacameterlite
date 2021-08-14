import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  //Initialize Get Storage
  await GetStorage.init();

  //Initialize Statusbar Color
  await FlutterStatusbarcolor.setStatusBarColor(Color(0xFF085394));
  if (useWhiteForeground(Color(0xFF085394))) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  } else {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  }

  //Initialize Orientation
  final orientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ];
  SystemChrome.setPreferredOrientations(orientation).then((_) {
    runApp(BacaMeter());
  });
}

class BacaMeter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Baca Meter Lite",

    );
  }
}