import 'dart:async';
import 'dart:developer';

import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/screens/home-screen/home-screen.dart';
import 'package:colonial_invoice/screens/welcome/mobile.dart';
import 'package:colonial_invoice/screens/welcome/tab.dart';
import 'package:colonial_invoice/screens/welcome/web.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () => Get.to(() => HomeScreen()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    bool isMobile = Responsive.isMobile(context);
    bool isTab = Responsive.isTablet(context);
    log('width: $width');
    log('height: $height');
    // log('block: $block');
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Responsive(mobile: WelcomeMobile(), tablet: WelcomeTab(), desktop: WelcomeWeb()),
    );
  }
}
