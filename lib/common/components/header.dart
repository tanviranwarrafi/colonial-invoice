import 'package:colonial_invoice/common/components/random.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';

import '../../utils/images.dart';

class ColonialHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var block = SizeConfig.block;
    bool isWeb = Responsive.isDesktop(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Center(
            child: Image.asset(
              Images.colonialInvoice,
              fit: BoxFit.cover,
              width: double.infinity,
              height: block * 18,
            ),
          ),
        ),
        SizedBox(width: block * 2),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SMOG & AUTO REGISTRATION RECEIPT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isWeb ? block * 2 : block * 3.5,
                  fontFamily: 'AvenirNextCyr',
                  fontWeight: FontWeight.w900,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: block),
              RedContainer(
                component: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 3,
                      child: ImageText(
                        title: '+1 858-267-4510',
                        alignment: MainAxisAlignment.center,
                        imageColor: Colors.white,
                        svgImage: Images.call,
                        pngImage: null,
                        titleColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: ImageText(
                        title: 'smog@colonialgarage.net',
                        alignment: MainAxisAlignment.center,
                        imageColor: Colors.white,
                        svgImage: Images.sms,
                        pngImage: null,
                        titleColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: ImageText(
                        title: 'www.colonialgarage.net',
                        alignment: MainAxisAlignment.center,
                        imageColor: Colors.white,
                        svgImage: Images.web,
                        pngImage: null,
                        titleColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
