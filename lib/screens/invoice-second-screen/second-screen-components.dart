import 'package:colonial_invoice/common/components/text-field-materials.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String questionNo;
  final String title;

  QuestionText({this.questionNo, this.title});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Flexible(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(questionNo, style: TextStyle(color: Colors.black, fontSize: block * 2.7)),
          SizedBox(width: block),
          Flexible(
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black, fontSize: block * 2.7),
            ),
          ),
        ],
      ),
    );
  }
}

class Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Text(
      '*',
      style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800, fontSize: block * 2.7),
    );
  }
}

class CheckOption extends StatelessWidget {
  final String title;
  final String value;
  final String staticValue;
  final Function onTap;

  CheckOption({this.value, this.title, this.staticValue, this.onTap});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          value == staticValue
              ? Icon(Icons.check_box_rounded, color: Colors.red, size: block * 3)
              : Icon(Icons.check_box_outline_blank, color: Colors.black, size: block * 3),
          SizedBox(width: block),
          Text(staticValue, style: TextStyle(color: Colors.black, fontSize: block * 2.7)),
        ],
      ),
    );
  }
}

class QuestionInput extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final bool readOnly;
  final int minLine;
  final int maxLine;
  final int maxLength;

  QuestionInput({this.controller, this.inputType, this.readOnly, this.maxLine, this.minLine, this.maxLength});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return TextFormField(
      controller: controller,
      enabled: true,
      minLines: minLine == null ? 1 : minLine,
      maxLines: maxLine == null ? 1 : maxLine,
      maxLength: maxLength == null ? null : maxLength,
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
        border: outlineBorder(color: Colors.black, width: 2),
        disabledBorder: outlineBorder(color: Colors.black, width: 2),
        enabledBorder: outlineBorder(color: Colors.black, width: 2),
        errorBorder: outlineBorder(color: Colors.black, width: 2),
        focusedBorder: outlineBorder(color: Colors.black, width: 2),
        focusedErrorBorder: outlineBorder(color: Colors.black, width: 2),
      ),
      onSaved: (text) => controller.text = text,
    );
  }
}

class SelectDate extends StatelessWidget {
  final String date;
  final Function onTap;

  SelectDate({this.date, this.onTap});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(block / 2),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(block / 2)),
        child: Row(
          children: [
            Text(date, style: TextStyle(color: Colors.black, fontSize: block * 2.2)),
            SizedBox(width: block),
            Icon(Icons.calendar_today, color: Colors.black, size: block * 2.5),
          ],
        ),
      ),
    );
  }
}
