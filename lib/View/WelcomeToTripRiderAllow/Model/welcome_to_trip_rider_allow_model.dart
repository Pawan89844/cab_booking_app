// import 'dart:developer';

// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart';

// class WelcomeToTripRiderModel with UserLocation {
//   void navigate() {
//     getLocation().then((value) {
//       if (value?.latitude != null && value?.longitude != null) {
//         // isallow.value = true;
//         Get.to(SelectYourCategory());
//       }
//     });
//   }
// }

// mixin class UserLocation {
//   Future<LocationData?> getLocation() async {
//     Location location = Location();

//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;
//     LocationData? _locationData;

//     _serviceEnabled = await location.serviceEnabled();
//     if (!_serviceEnabled) {
//       _serviceEnabled = await location.requestService();
//       if (!_serviceEnabled) {
//         return _locationData;
//       }
//     }

//     _permissionGranted = await location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return _locationData;
//       }
//     }

//     _locationData = await location.getLocation();
//     if (kDebugMode) {
//       log('Location: ${_locationData.latitude}');
//     }
//     return _locationData;
//   }
// }
