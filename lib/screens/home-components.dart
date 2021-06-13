import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/cupertino.dart';
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
          style: TextStyle(
            fontSize: block * 2.5,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        isRequired ? Text('*', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800, fontSize: block * 4)) : SizedBox.shrink(),
      ],
    );
  }
}