import 'package:colonial_invoice/utils/size-config.dart';
import 'package:colonial_invoice/utils/strings.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var block = SizeConfig.block;
    return Container(
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'SMOG CHECK TERMS & CONDITIONS',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: block * 2.1),
                ),
                Container(height: 2, width: width / 3, color: Colors.black),
                SizedBox(height: block),
                Text(
                  Strings.policy,
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black, fontSize: block * 1.7),
                ),
              ],
            ),
          ),
          SizedBox(width: block * 2.5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'AUTO REGISTRATION TERM & CONDITIONS',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: block * 2.1),
                ),
                Container(height: 2, width: width / 2, color: Colors.black),
                SizedBox(height: block),
                Text(
                  Strings.termsAndConditions,
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black, fontSize: block * 1.7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
