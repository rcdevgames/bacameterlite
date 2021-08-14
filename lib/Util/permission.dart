import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class MyPermission extends GetxService {
  Future requestAll() async {
    final res = await Future.wait<bool>([
      Permission.location.isDenied,
      Permission.locationAlways.isDenied,
      Permission.locationWhenInUse.isDenied,
      Permission.accessMediaLocation.isDenied,
      Permission.camera.isDenied,
      Permission.mediaLibrary.isDenied,
      Permission.photos.isDenied,
      Permission.microphone.isDenied,
      Permission.storage.isDenied
    ]);

    print("Permissions : $res");
    if (res.where((stat) => stat == false).length > 0) {
      final _permissions = [
        Permission.location,
        Permission.locationAlways,
        Permission.locationWhenInUse,
        Permission.accessMediaLocation,
        Permission.storage,
        Permission.camera,
        Permission.mediaLibrary,
        Permission.photos,
        Permission.microphone
      ];

      Map<Permission, PermissionStatus> statuses = await _permissions.request();
      print("Location Permission $statuses");
    }
  }

  Future requestLocation() async {
    final res = await Future.wait<bool>([
      Permission.location.isDenied,
      Permission.locationAlways.isDenied,
      Permission.locationWhenInUse.isDenied,
      Permission.accessMediaLocation.isDenied,
    ]);

    if (res.where((stat) => stat == false).length > 0) {
      final _permissions = [
        Permission.location,
        Permission.locationAlways,
        Permission.locationWhenInUse,
        Permission.accessMediaLocation
      ];

      Map<Permission, PermissionStatus> statuses = await _permissions.request();
      print("Location Permission $statuses");
    }
  }

  Future requestStorage() async {
    if ((await Permission.storage.isDenied)) {
      final stat = await Permission.storage.request();
      print("Storage Permission $stat");
    }
  }

  Future requestCamera() async {
    final res = await Future.wait<bool>([
      Permission.camera.isDenied,
      Permission.mediaLibrary.isDenied,
      Permission.photos.isDenied,
      Permission.microphone.isDenied
    ]);

    if (res.where((stat) => stat == false).length > 0) {
      final _permissions = [
        Permission.camera,
        Permission.mediaLibrary,
        Permission.photos,
        Permission.microphone
      ];

      Map<Permission, PermissionStatus> statuses = await _permissions.request();
      print("Camera Permission $statuses");
    }
  }
}