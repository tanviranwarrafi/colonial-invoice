import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';

class WelcomeWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(block * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(Images.colonialInvoice, width: block * 30),
          Text(
            'Welcome to Task Manager',
            style: TextStyle(
              fontSize: block * 2.5,
              fontFamily: 'AvenirNextCyr',
              color: Colors.black,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tap "Agree and Continure" to accept ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: block * 1.5,
                  fontFamily: 'AvenirNextCyr',
                  color: Color.fromRGBO(155, 172, 207, 1),
                ),
              ),
              Text(
                'Terms of Service and Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: block * 1.5,
                  fontFamily: 'AvenirNextCyr',
                  color: Color.fromRGBO(155, 172, 207, 1),
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
