import 'package:colonial_invoice/common/components/text-field-materials.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionNo;
  final String title;

  Question({this.questionNo, this.title});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Flexible(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(questionNo, style: TextStyle(color: Colors.black, fontSize: block * 3)),
          SizedBox(width: block),
          Flexible(
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black, fontSize: block * 3),
            ),
          ),
        ],
      ),
    );
  }
}

class CheckOption extends StatelessWidget {
  final String title;
  final String value;

  CheckOption({this.value, this.title});

  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.check_box_outline_blank, color: Colors.black, size: block * 3),
        SizedBox(width: block),
        Text(title, style: TextStyle(color: Colors.black, fontSize: block * 3)),
      ],
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
      maxLines: maxLine == null ? 1 : maxLength,
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
      // validator: (text) => validators.validateName(value: text),
      onSaved: (text) => controller.text = text,
    );
  }
}
