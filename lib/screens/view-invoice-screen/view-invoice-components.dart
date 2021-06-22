import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';

class InvoiceTitle extends StatelessWidget {
  final String title;
  final bool isRequired;

  InvoiceTitle({this.title, this.isRequired});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: block * 2,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        isRequired ? Text('*', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800, fontSize: block * 4)) : SizedBox.shrink(),
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  final String title;
  final bool isBoldText;
  final double fontSize;
  final double height;
  final Color color;

  TitleText({this.fontSize, this.title, this.isBoldText, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Container(
      height: height == null ? block * 6.5 : height,
      color: color == null ? Colors.white : color,
      padding: EdgeInsets.all(block),
      child: Text(
        title,
        maxLines: 2,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.black,
          fontWeight: isBoldText == null ? FontWeight.w600 : FontWeight.bold,
          fontSize: fontSize == null ? block * 2 : fontSize,
        ),
      ),
    );
  }
}
