import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget textField;

  TextFieldContainer({this.textField});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Container(
      padding: EdgeInsets.only(left: block, right: block),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(block * 2.5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 3),
        ],
      ),
      child: textField,
    );
  }
}

textFieldDecoration({String hint}) {
  return InputDecoration(
    filled: true,
    focusColor: Colors.black,
    // prefixIcon: Icon(Icons.account_circle, color: Colors.grey),
    fillColor: Colors.white,
    enabled: true,
    hoverColor: Colors.black,
    isDense: true,

    // contentPadding: EdgeInsets.only(left: block * 2, right: block * 2, bottom: block * 2.5, top: block * 2.5),
    // border: InputBorder.none,
    hintText: hint,
    hintStyle: hintStyle(),
    errorStyle: errorStyle(),
  );
}

outlineBorder({double radius, Color color, double width}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(radius == null ? 0 : radius),
    borderSide: BorderSide(color: color == null ? Colors.white : color, width: width == null ? 0 : width),
  );
}

withOutBorder({double radius}) {
  return OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(radius == null ? 0 : radius),
  );
}

hintStyle() {
  var block = SizeConfig.block;
  return TextStyle(color: Colors.grey, fontSize: block * 2);
}

textStyle({double fontSize}) {
  var block = SizeConfig.block;
  return TextStyle(color: Colors.black, fontSize: fontSize == null ? block * 2.5 : fontSize);
}

errorStyle() {
  var block = SizeConfig.block;
  return TextStyle(color: Colors.red, fontSize: block * 3.8);
}
