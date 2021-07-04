import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/invoice-second-screen/second-screen-components.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/view-invoice-components.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QuestionTitle(title: '1.   Do you have a title or registration card?'),
            SizedBox(width: block * 2),
            CheckOption(title: 'Yes', value: controller.isRegistrationCard, staticValue: controller.isRegistrationCard),
          ],
        ),
        SizedBox(height: block),
        QuestionTitle(title: '2.   When did your vehicle last enter for intention of living in California?'),
        SizedBox(height: block / 2),
        QuestionTitle(
          title: controller.lastEnterDate == 'null' ? '      Date: Not Selected' : '      Date: ${controller.lastEnterDate}',
        ),
        SizedBox(height: block),
        QuestionTitle(title: '3.   What is the estimated value of your car?'),
        SizedBox(height: block / 2),
        QuestionTitle(
          title: controller.estimatedValue.text.length > 0
              ? '      Estimated value: ${controller.estimatedValue.text}'
              : '      Estimated value: Not Inserted',
        ),
        SizedBox(height: block),
        QuestionTitle(title: '4.   When did you buy this car (Estimated date)?'),
        SizedBox(height: block / 2),
        QuestionTitle(
          title: controller.buyCarDate == 'null'
              ? '      Estimated Date: Not Selected'
              : '      Estimated Date: ${controller.buyCarDate}',
        ),
        SizedBox(height: block),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QuestionTitle(title: '5.   Is your vehicle finamced, leased?'),
            SizedBox(width: block * 2),
            CheckOption(value: controller.isFinanced, staticValue: controller.isFinanced),
          ],
        ),
        SizedBox(height: block),
        QuestionTitle(title: '6.   If lease or finance car, please write name of the bank adn address?'),
        SizedBox(height: block / 2),
        QuestionTitle(
          title: controller.bankName.text.length > 0
              ? '      Bank Name: ${controller.bankName.text}'
              : '      Bank Name: Not Inserted',
        ),
        SizedBox(height: block / 2),
        QuestionTitle(
            title: controller.bankAddress.text.length > 0
                ? '      Bank Address: ${controller.bankAddress.text}'
                : '      Bank Address: Not Inserted'),
        SizedBox(height: block),
      ],
    );
  }
}
