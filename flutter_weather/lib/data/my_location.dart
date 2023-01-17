import 'package:geolocator/geolocator.dart';

class MyLocation {
  late double latitude;
  late double longitude;

  Future<void> getMyCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;

      print(position);
      print(latitude);
      print(longitude);
    } catch(e) {
      print('위치정보를 받아올 수 없습니다.');
    }
  }
}