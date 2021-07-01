import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Stack(
      children: [
        Container(
          height: block * 20,
          width: block * 20,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(block * 2),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SpinKitFadingCircle(color: Colors.white, size: block * 10),
                SizedBox(height: block),
              ],
            ),
          ),
        ),
        Positioned(top: 2, left: 2, right: 2, bottom: 2, child: CircularProgressIndicator(strokeWidth: 1.5)),
      ],
    );
  }
}
