import 'package:colonial_invoice/common/components/text-field-materials.dart';
import 'package:colonial_invoice/controllers/home-controller.dart';
import 'package:colonial_invoice/screens/home-screen/home-components.dart';
import 'package:colonial_invoice/services/validators.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    final controller = Get.put(HomeController());
    Validators validators = Validators();
    return Container(
      width: width,
      height: height,
      color: Colors.white,
      padding: EdgeInsets.only(left: block * 4, right: block * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: block * 3),
          InvoiceTitle(title: 'Customer Name', isRequired: true),
          SizedBox(height: block * 2),
          TextFieldContainer(
            textField: TextFormField(
              controller: controller.nameController,
              enabled: true,
              minLines: 1,
              maxLines: 1,
              maxLengthEnforced: false,
              keyboardType: TextInputType.text,
              cursorColor: Colors.black,
              cursorHeight: block * 5,
              style: textStyle(),
              decoration: textFieldDecoration(),
              onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
              validator: (text) => validators.validateName(value: text),
              onSaved: (text) => controller.nameController.text = text,
            ),
          ),
          SizedBox(height: block * 3),
          InvoiceTitle(title: 'Date', isRequired: true),
          SizedBox(height: block * 2),
          TextFieldContainer(
            textField: TextFormField(
              controller: controller.nameController,
              enabled: true,
              minLines: 1,
              maxLines: 1,
              maxLengthEnforced: false,
              keyboardType: TextInputType.text,
              cursorColor: Colors.black,
              cursorHeight: block * 5,
              style: textStyle(),
              decoration: textFieldDecoration(),
              onEditingComplete: () => FocusScope.of(context).requestFocus(FocusNode()),
              validator: (text) => validators.validateName(value: text),
              onSaved: (text) => controller.nameController.text = text,
            ),
          ),
        ],
      ),
    );
  }
}
