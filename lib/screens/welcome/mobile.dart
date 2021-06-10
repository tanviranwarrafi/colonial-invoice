import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WelcomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    bool isMobile = Responsive.isMobile(context);
    bool isTab = Responsive.isTablet(context);
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(block * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(Images.colonialInvoice, width: block * 40, height: block * 40),
              SizedBox(height: block * 10),
              Text(
                'Welcome to Task Manager',
                style: TextStyle(
                  fontSize: block * 7,
                  fontFamily: 'AvenirNextCyr',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: block * 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tap "Agree and Continure" to accept ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: block * 3.8,
                      fontFamily: 'AvenirNextCyr',
                      color: Color.fromRGBO(155, 172, 207, 1),
                    ),
                  ),
                  Text(
                    'Terms of Service and Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: block * 3.8,
                      fontFamily: 'AvenirNextCyr',
                      color: Color.fromRGBO(155, 172, 207, 1),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: block * 10,
          child: SpinKitFadingCube(color: Colors.green, size: block * 8, duration: Duration(milliseconds: 1000)),
        ),
      ],
    );
  }
}
