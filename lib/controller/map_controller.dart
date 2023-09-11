
import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:klio_delivery/constant/utils.dart';

class MapController extends GetxController {
  RxDouble currentLatitude = 0.0.obs;
  RxDouble currentLongitude = 0.0.obs;

  RxDouble customerLatitude = 0.0.obs;
  RxDouble customerLongitude = 0.0.obs;

  Future<void> getCurrentPosition() async {
    Utils.showLoading();
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print('Permission not given');
      LocationPermission askedPermission = await Geolocator.requestPermission();
    } else {
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      currentLatitude.value = currentPosition.latitude;
      currentLongitude.value = currentPosition.longitude;
      // print('Longitude = ' + currentPosition.longitude.toString());
      // print('Latitude = ' + currentPosition.latitude.toString());
    }
    Utils.hidePopup();
  }

  Future<void> getCustomerPosition({var adrs}) async {
    Utils.showLoading();
    GeoCode geoCode = GeoCode();

      Coordinates coordinates = await geoCode.forwardGeocoding(address: adrs);
      customerLatitude.value = coordinates.latitude!;
      customerLongitude.value = coordinates.longitude!;
      // print("=========Latitude: ${coordinates.latitude}");
      // print("=========Longitude: ${coordinates.longitude}");
    Utils.hidePopup();

  }


}
