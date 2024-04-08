import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../Constants/api.dart';
import '../../../Services/Api/api_service.dart';
import '../../HomePage/home_page.dart';

class OTPPageModel {
  final RequestApi _api = RequestApi();
  RxBool isOTPVerified = false.obs;

  void verifyOTP(String mobileNumber, String otp) async {
    isOTPVerified.value = true;
    final body = json.encode({'mobileNumber': mobileNumber, "otp": otp});
    final header = {'Content-Type': 'application/json'};
    http.Response req =
        await _api.postRequest(Api.verifyOTP, body: body, headers: header);
    _isOTPVerified(req);
  }

  void _isOTPVerified(http.Response res) {
    if (res.statusCode == 200) {
      isOTPVerified.value = false;
      Get.to(HomePage());
      log('Logged In : ${res.body}');
    } else if (res.statusCode == 400) {
      isOTPVerified.value = false;
      Get.snackbar('Error', 'Invalid OTP');
    } else {
      isOTPVerified.value = false;
      log('Error Logged In : ${res.statusCode}');
    }
  }
}
