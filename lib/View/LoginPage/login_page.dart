import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../Constants/Konstants.dart';
import '../OTPPage/otp_page.dart';
import '../SelectLanguagePage/select_language_page.dart';
import '../SignUp/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: AppConstants.height * 0.06,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/small_Landing.png'),
                  ),
                ),
                SizedBox(
                  height: AppConstants.height * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            Get.to(SelectLanguagePage());
                          },
                          child:
                              Image.asset('assets/images/selectlangauge.png'))
                    ],
                  ),
                ),
                Text(
                  'Signin with phone number',
                ),
                SizedBox(
                  height: AppConstants.height * 0.005,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(color: Colors.grey)),
                  child: TextField(
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14 * AppConstants.text),
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Phone Number',
                        contentPadding: EdgeInsets.all(16)),
                  ),
                ),
                SizedBox(
                  height: AppConstants.height * 0.03,
                ),
                SizedBox(
                  width: AppConstants.width * 0.999,
                  height: AppConstants.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(OtpScreen(
                        mobileNo: '',
                      ));
                      // _loginController.callLogin();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfff52d56),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppConstants.height * 0.02,
                ),
                Center(
                  child: Text(
                    'We\'ll send OTP for verification',
                  ),
                ),
                SizedBox(
                  height: AppConstants.height * 0.03,
                ),
                Center(
                  child: Text(
                    'Or',
                    style: TextStyle(fontSize: 15 * AppConstants.text),
                  ),
                ),
                SizedBox(
                  height: AppConstants.height * 0.03,
                ),
                Center(
                  child: SizedBox(
                    width: AppConstants.width * 0.9,
                    height: AppConstants.height * 0.07,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          surfaceTintColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              scale: 1,
                            ),
                            SizedBox(
                              width: AppConstants.width * 0.01,
                            ),
                            const Text(
                              'Sign in with Google',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppConstants.height * 0.03,
                ),
                Center(
                  child: SizedBox(
                    width: AppConstants.width * 0.9,
                    height: AppConstants.height * 0.07,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xfff52d56),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/fb.png',

                              // scale: 1,
                            ),
                            SizedBox(
                              width: AppConstants.width * 0.01,
                            ),
                            const Text(
                              'Sign in with Facebook',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                    ),
                    SizedBox(
                      width: AppConstants.width * 0.02,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(RegisterScreen());
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: AppConstants.height * 0.04,
                ),
                Center(
                  child: Text(
                    'By signing up you have agreed to our',
                    style: TextStyle(
                        color: Colors.black, fontSize: 10 * AppConstants.text),
                  ),
                ),
                Center(
                  child: Flex(direction: Axis.vertical, children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: ' TERMS OF USE',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10 * AppConstants.text),
                          children: [
                            TextSpan(
                                text: ' and',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10 * AppConstants.text)),
                            TextSpan(
                                text: ' PRIVACY POLICY',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10 * AppConstants.text))
                          ]),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
