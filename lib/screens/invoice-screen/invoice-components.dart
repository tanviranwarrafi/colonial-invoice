import 'package:colonial_invoice/common/components/text-field-materials.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SectionTitle extends StatelessWidget {
  final String pngImage;
  final String svgImage;
  final String title;
  final Color titleColor;
  final Color imageColor;
  final MainAxisAlignment alignment;

  SectionTitle({this.pngImage, this.svgImage, this.title, this.titleColor, this.imageColor, this.alignment});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: alignment == null ? MainAxisAlignment.start : alignment,
      children: [
        pngImage == null
            ? SvgPicture.asset(svgImage, color: imageColor, width: block * 4, height: block * 4)
            : Image.asset(pngImage, fit: BoxFit.cover, width: block * 4, height: block * 4),
        SizedBox(width: block),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: block * 2.8, color: titleColor),
        ),
      ],
    );
  }
}

class CustomerTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final bool readOnly;

  CustomerTextField({this.controller, this.inputType, this.readOnly});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return TextFormField(
      controller: controller,
      enabled: true,
      minLines: 1,
      maxLines: 1,
      readOnly: readOnly == null ? false : readOnly,
      showCursor: readOnly == null || !readOnly ? true : false,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      cursorHeight: block * 3,
      style: textStyle(),
      onEditingComplete: () => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabled: true,
        isDense: true,
        contentPadding: EdgeInsets.all(block / 1.5),
        border: outlineBorder(color: Colors.white),
        disabledBorder: outlineBorder(color: Colors.white),
        enabledBorder: outlineBorder(color: Colors.white),
        errorBorder: outlineBorder(color: Colors.white),
        focusedBorder: outlineBorder(color: Colors.white),
        focusedErrorBorder: outlineBorder(color: Colors.white),
      ),
      // validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.text = text,
    );
  }
}

class ServiceTitle extends StatelessWidget {
  final double size;
  final String svgImage;
  final String title;
  final Color titleColor;
  final Color imageColor;
  final MainAxisAlignment alignment;

  ServiceTitle({this.size, this.svgImage, this.title, this.titleColor, this.imageColor, this.alignment});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Padding(
      padding: EdgeInsets.only(left: block * 2, right: block, top: block, bottom: block),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: alignment == null ? MainAxisAlignment.start : alignment,
        children: [
          SvgPicture.asset(svgImage, color: imageColor, fit: BoxFit.cover, width: block * 3, height: block * 3),
          SizedBox(width: size == null ? block : size),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: block * 2, color: titleColor),
          ),
        ],
      ),
    );
  }
}

class TableRowTitle extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color background;
  final TextAlign textAlign;
  final MainAxisAlignment alignment;
  final double height;
  final FontWeight fontWeight;

  TableRowTitle({this.title, this.titleColor, this.background, this.textAlign, this.alignment, this.height, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Container(
      height: height == null ? block * 6.5 : height,
      color: background == null ? Colors.white : background,
      padding: EdgeInsets.all(block),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: alignment == null ? MainAxisAlignment.start : alignment,
        children: [
          Flexible(
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: textAlign == null ? TextAlign.start : textAlign,
              style: TextStyle(
                fontSize: block * 2,
                color: titleColor == null ? Colors.black : titleColor,
                fontWeight: fontWeight == null ? FontWeight.normal : fontWeight,
                // fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TableRowInput extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final bool readOnly;
  final double height;
  final Color color;

  TableRowInput({this.controller, this.inputType, this.readOnly, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Container(
      height: height == null ? block * 6.5 : height,
      color: color == null ? Colors.white : color,
      padding: EdgeInsets.all(block),
      child: Center(
        child: TextFormField(
          controller: controller,
          enabled: true,
          minLines: 1,
          maxLines: 1,
          readOnly: readOnly == null ? false : readOnly,
          showCursor: readOnly == null || !readOnly ? true : false,
          keyboardType: TextInputType.text,
          cursorColor: Colors.black,
          cursorHeight: block * 3,
          style: textStyle(),
          onEditingComplete: () => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            enabled: true,
            isDense: true,
            filled: true,
            fillColor: color == null ? Colors.white : color,
            contentPadding: EdgeInsets.all(block / 1.5),
            border: withOutBorder(),
            disabledBorder: withOutBorder(),
            enabledBorder: withOutBorder(),
            errorBorder: withOutBorder(),
            focusedBorder: withOutBorder(),
            focusedErrorBorder: withOutBorder(),
          ),
          // validator: (text) => validators.validateName(value: text),
          onSaved: (text) => controller.text = text,
        ),
      ),
    );
  }
}

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
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabled: true,
            isDense: true,
            border: outlineBorder(color: Colors.white),
          ),
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
