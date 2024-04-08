import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ExploreNewWayContinue/ExploreNewWayContinue.dart';
import '../LandingPage/landing_page.dart';

class LandingPage1 extends StatefulWidget {
  const LandingPage1({super.key});

  @override
  State<LandingPage1> createState() => _LandingPage1State();
}

class _LandingPage1State extends State<LandingPage1> {
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(seconds: 2), () {
      Get.offAll(ExploreNewWayContinue());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010302),
      body: Center(child: Image.asset('assets/images/big_landing.png')),
    );
  }
}
