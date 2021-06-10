import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final String title;
  final double width;
  final double borderRadius;
  final double padding;
  final Color background;
  final double fontSize;
  final Color fontColor;
  final Function onTap;

  CustomRaisedButton({this.title, this.width, this.borderRadius, this.padding, this.background, this.fontColor, this.fontSize, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: width == null ? MediaQuery.of(context).size.width : width,
      child: RaisedButton(
        padding: EdgeInsets.all(padding == null ? 0 : padding),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius == null ? 0 : borderRadius)),
        onPressed: onTap,
        color: background == null ? Colors.green : background,
        child: Text(
          title,
          style: TextStyle(fontSize: fontSize == null ? null : fontSize, color: fontColor == null ? Colors.white : fontColor),
        ),
      ),
    );
  }
}
