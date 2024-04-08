import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../Constants/api.dart';
import '../../../Services/Api/api_service.dart';
import '../../OTPPage/otp_page.dart';

class LoginPageModel {
  final RequestApi _api = RequestApi();
  RxBool isLoggingIn = false.obs;

  void loginByPhoneNo(String mobileNumber) async {
    isLoggingIn.value = true;
    final body = json.encode({'mobileNumber': mobileNumber});
    var headers = {'Content-Type': 'application/json'};
    http.Response req =
        await _api.postRequest(Api.loginWithOTP, body: body, headers: headers);
    _isOTPSent(req, mobileNumber);
  }

  void _isOTPSent(http.Response req, String mobileNo) {
    if (req.statusCode == 200) {
      log('Body: ${req.body}');
      isLoggingIn.value = false;
      Get.to(() => OtpScreen(mobileNo: mobileNo));
    } else {
      log('Body: ${Api.loginWithOTP}');
      isLoggingIn.value = false;
    }
  }
}
