import 'package:colonial_invoice/common/components/text-field-materials.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';

class CustomerContactInfo extends StatelessWidget {
  final String image;
  final String title;

  CustomerContactInfo({this.title, this.image});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    bool isWeb = Responsive.isDesktop(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, width: block * 8, height: block * 8, fit: BoxFit.cover),
        SizedBox(height: block),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isWeb ? block * 2 : block * 2,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class CustomerTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;

  CustomerTextField({this.controller, this.inputType});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return TextFormField(
      controller: controller,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      onEditingComplete: () => FocusScope.of(context).unfocus(),
      // validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.text = text,
    );
  }
}

class RowTitle extends StatelessWidget {
  final String image;
  final String title;
  final bool left;
  final bool right;
  final bool top;
  final bool bottom;

  RowTitle({this.title, this.image, this.top, this.bottom, this.left, this.right});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    bool isWeb = Responsive.isDesktop(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          top: BorderSide(color: top == null ? Colors.transparent : Colors.grey, width: top == null ? 0 : 1.5),
          left: BorderSide(color: left == null ? Colors.transparent : Colors.grey, width: left == null ? 0 : 1.5),
          right: BorderSide(color: right == null ? Colors.transparent : Colors.grey, width: right == null ? 0 : 1.5),
          bottom: BorderSide(color: bottom == null ? Colors.transparent : Colors.grey, width: bottom == null ? 0 : 1.5),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(block),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: block * 8, height: block * 8, fit: BoxFit.cover),
            SizedBox(width: block * 2),
            Flexible(
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: isWeb ? block * 2 : block * 2.5,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final bool left;
  final bool right;
  final bool top;
  final bool bottom;
  final String title;
  final bool isBoldText;
  final double fontSize;

  TitleText({this.top, this.bottom, this.left, this.right, this.fontSize, this.title, this.isBoldText});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          top: BorderSide(color: top == null ? Colors.transparent : Colors.grey, width: top == null ? 0 : 1.5),
          left: BorderSide(color: left == null ? Colors.transparent : Colors.grey, width: left == null ? 0 : 1.5),
          right: BorderSide(color: right == null ? Colors.transparent : Colors.grey, width: right == null ? 0 : 1.5),
          bottom: BorderSide(color: bottom == null ? Colors.transparent : Colors.grey, width: bottom == null ? 0 : 1.5),
        ),
      ),
      child: Padding(
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
      ),
    );
  }
}

class TitleInput extends StatelessWidget {
  final bool left;
  final bool right;
  final bool top;
  final bool bottom;
  final bool readOnly;
  final TextEditingController controller;

  TitleInput({this.top, this.bottom, this.left, this.right, this.readOnly, this.controller});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          top: BorderSide(color: top == null ? Colors.transparent : Colors.grey, width: top == null ? 0 : 1.5),
          left: BorderSide(color: left == null ? Colors.transparent : Colors.grey, width: left == null ? 0 : 1.5),
          right: BorderSide(color: right == null ? Colors.transparent : Colors.grey, width: right == null ? 0 : 1.5),
          bottom: BorderSide(color: bottom == null ? Colors.transparent : Colors.grey, width: bottom == null ? 0 : 1.5),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(block),
        child: TextFormField(
          controller: controller,
          enabled: true,
          minLines: 1,
          maxLines: 1,
          readOnly: readOnly == null ? false : readOnly,
          showCursor: readOnly == null || !readOnly ? true : false,
          keyboardType: TextInputType.number,
          cursorColor: Colors.black,
          cursorHeight: block * 3,
          style: textStyle(),
          decoration: textFieldDecoration(),
          onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
          onSaved: (text) => controller.text = text,
        ),
      ),
    );
  }
}

class TitleData extends StatelessWidget {
  /*final bool left;
  final bool right;
  final bool top;
  final bool bottom;*/
  final String title;
  // final bool isBoldText;
  // final double fontSize;

  TitleData({
    /*this.top, this.bottom, this.left, this.right, this.fontSize, */ this.title,
    /*this.isBoldText*/
  });

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Container(
      /*decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          top: BorderSide(color: top == null ? Colors.transparent : Colors.grey, width: top == null ? 0 : 1.5),
          left: BorderSide(color: left == null ? Colors.transparent : Colors.grey, width: left == null ? 0 : 1.5),
          right: BorderSide(color: right == null ? Colors.transparent : Colors.grey, width: right == null ? 0 : 1.5),
          bottom: BorderSide(color: bottom == null ? Colors.transparent : Colors.grey, width: bottom == null ? 0 : 1.5),
        ),
      ),*/
      child: Padding(
        padding: EdgeInsets.all(block),
        child: Text(
          title,
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: block * 2.2,
          ),
        ),
      ),
    );
  }
}
