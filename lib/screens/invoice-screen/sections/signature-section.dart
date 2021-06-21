import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignatureSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var block = SizeConfig.block;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(block * 2.5),
            decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: Colors.red, width: 2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your signature below indicates you agree to the ESTIMATED QUOTE and TERMS & CONDITIONS listed above',
                  style: TextStyle(color: Colors.black, fontSize: block * 1.8),
                ),
                SizedBox(height: block),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        height: block * 8,
                        color: Color(0xFFF2F2F3),
                        padding: EdgeInsets.all(block),
                        child: Text(
                          'Customer Signature',
                          style: TextStyle(fontSize: block * 2.5, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    SizedBox(width: block * 2.5),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: block * 8,
                        color: Color(0xFFF2F2F3),
                        padding: EdgeInsets.all(block),
                        child: Text(
                          'Date Service',
                          style: TextStyle(fontSize: block * 2.5, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: block * 2.5),
        Container(
          width: width / 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(Images.qr, width: width / 6, fit: BoxFit.cover, height: width / 6),
              SizedBox(height: block / 3),
              Text(
                'Scan here to \nwrite a review!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: block * 2),
              )
            ],
          ),
        ),
      ],
    );
  }
}
