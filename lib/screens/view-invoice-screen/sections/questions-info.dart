import 'package:colonial_invoice/screens/invoice-second-screen/second-screen-components.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/view-invoice-components.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
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
            CheckOption(title: 'Yes', value: 'yes'),
          ],
        ),
        SizedBox(height: block),
        QuestionTitle(title: '2.   When did your vehicle last enter for intention of living in California?'),
        SizedBox(height: block / 2),
        QuestionTitle(title: '      Date: '),
        SizedBox(height: block),
        QuestionTitle(title: '3.   What is the estimated value of your car?'),
        SizedBox(height: block / 2),
        QuestionTitle(title: '      Date: '),
        SizedBox(height: block),
        QuestionTitle(title: '4.   When did you buy this car (Estimated date)?'),
        SizedBox(height: block / 2),
        QuestionTitle(title: '      '),
        SizedBox(height: block),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QuestionTitle(title: '5.   Is your vehicle finamced, leased?'),
            SizedBox(width: block * 2),
            CheckOption(title: 'Yes', value: 'yes'),
          ],
        ),
        SizedBox(height: block),
        QuestionTitle(title: '6.   If lease or finance car, please write name of the bank adn address?'),
        SizedBox(height: block / 2),
        QuestionTitle(title: '      Bank Name: '),
        SizedBox(height: block / 2),
        QuestionTitle(title: '      Bank Address: '),
        SizedBox(height: block),
      ],
    );
  }
}
