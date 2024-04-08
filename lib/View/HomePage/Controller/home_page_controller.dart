import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePageController extends GetxController {
  RxDouble lat = 0.0.obs;
  RxDouble lng = 0.0.obs;
  Completer<GoogleMapController> mapController = Completer();

  void fetchCurrentLocation() async {
    // LocationData? locationData = await getLocation();
    // if (locationData?.latitude == null && locationData?.longitude == null) {
    //   lat.value = 0.0;
    //   lng.value = 0.0;
    // } else {
    //   lat.value = locationData?.latitude as double;
    //   lng.value = locationData?.longitude as double;
    // }
  }
}
