import 'dart:async';
import 'dart:developer';

import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/screens/home-screen.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ));
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
      body: Responsive(
        mobile: Container(
          width: width,
          height: height,
        ),
        tablet: Stack(
          children: [
            Container(
              width: width,
              height: height,
              padding: EdgeInsets.all(block * 3),
              child: Row(
                children: [
                  Expanded(flex: 2, child: colonialImage(context)),
                  SizedBox(width: block * 3),
                  Container(height: height / 3, width: 5, color: Colors.grey[300]),
                  SizedBox(width: block * 3),
                  Expanded(flex: 3, child: title(context)),
                ],
              ),
            ),
            welcomeLoader(context),
          ],
        ),
        desktop: Container(
          width: width,
          height: height,
          padding: EdgeInsets.all(block * 3),
          child: Row(
            children: [
              Expanded(flex: 2, child: colonialImage(context)),
              SizedBox(width: block * 2),
              Container(height: height / 1.5, width: 5, color: Colors.grey[300]),
              SizedBox(width: block * 2),
              Expanded(flex: 3, child: title(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget colonialImage(BuildContext context) {
    var block = SizeConfig.block;
    return Image.asset(Images.colonialInvoice, width: block * 30, height: block * 30);
  }

  Widget title(BuildContext context) {
    var block = SizeConfig.block;
    bool isWeb = Responsive.isDesktop(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome to\n Colonial Invoice',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isWeb ? block * 2 : block * 6,
            fontFamily: 'AvenirNextCyr',
            color: Colors.black,
          ),
        ),
        SizedBox(height: block * 2),
        Text(
          'Tap "Agree and Continure" to accept ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isWeb ? block * 1.5 : block * 3,
            fontFamily: 'AvenirNextCyr',
            color: Color.fromRGBO(155, 172, 207, 1),
          ),
        ),
        Text(
          'Terms of Service and Privacy Policy',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isWeb ? block * 1.5 : block * 3,
            fontFamily: 'AvenirNextCyr',
            color: Color.fromRGBO(155, 172, 207, 1),
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }

  Widget welcomeLoader(BuildContext context) {
    var block = SizeConfig.block;
    bool isTab = Responsive.isDesktop(context);
    return Positioned(
      left: 0,
      right: 0,
      bottom: block * 10,
      child: SpinKitFadingCube(
        color: Colors.red,
        size: isTab ? block * 2 : block * 5,
        duration: Duration(milliseconds: 1000),
      ),
    );
  }
}
