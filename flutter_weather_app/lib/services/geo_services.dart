import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class GeoService extends GetxService {
  Future determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return permission;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return permission;
    }
    return await Geolocator.getCurrentPosition();
  }
}
