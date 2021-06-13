import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';

class ColonialHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var block = SizeConfig.block;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(flex: 2, child: colonialImage(context)),
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  title(context: context, color: Colors.red, title: 'COLONIAL' + '  '),
                  title(context: context, color: Colors.black, title: 'GARAGE'),
                ],
              ),
              subTitle(context),
              Center(child: Container(width: width / 2, color: Colors.black, height: 4)),
              SizedBox(height: block),
              subSubTitle(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget colonialImage(BuildContext context) {
    var block = SizeConfig.block;
    return Image.asset(Images.colonialInvoice, width: block * 25, height: block * 25);
  }

  Widget title({BuildContext context, Color color, String title}) {
    var block = SizeConfig.block;
    bool isWeb = Responsive.isDesktop(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isWeb ? block * 2 : block * 4,
            fontFamily: 'AvenirNextCyr',
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget subTitle(BuildContext context) {
    var block = SizeConfig.block;
    bool isWeb = Responsive.isDesktop(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'SMOG & AUTO REGISTRATION',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isWeb ? block * 2 : block * 3,
            fontFamily: 'AvenirNextCyr',
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget subSubTitle(BuildContext context) {
    var block = SizeConfig.block;
    bool isWeb = Responsive.isDesktop(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '7618 Herschel Avenue, La Jolla, CA 92037',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isWeb ? block * 2 : block * 2.5,
            fontFamily: 'AvenirNextCyr',
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
