import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/size-config.dart';

class RedContainer extends StatelessWidget {
  final Widget component;

  RedContainer({this.component});

  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var block = SizeConfig.block;
    return Container(
      width: width,
      color: Colors.red,
      padding: EdgeInsets.all(block),
      child: component,
    );
  }
}

class ImageText extends StatelessWidget {
  final String pngImage;
  final String svgImage;
  final String title;
  final Color titleColor;
  final Color imageColor;
  final MainAxisAlignment alignment;

  ImageText({this.pngImage, this.svgImage, this.title, this.titleColor, this.imageColor, this.alignment});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: alignment == null ? MainAxisAlignment.start : alignment,
      children: [
        pngImage == null
            ? SvgPicture.asset(svgImage, color: imageColor, width: block * 2, height: block * 2)
            : Image.asset(pngImage, fit: BoxFit.cover, width: block * 2, height: block * 2),
        SizedBox(width: block / 2),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: block * 1.8,
            fontWeight: FontWeight.w800,
            color: titleColor,
          ),
        ),
      ],
    );
  }
}
