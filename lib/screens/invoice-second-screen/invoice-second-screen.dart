import 'package:colonial_invoice/common/components/buttons.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/invoice-second-screen/second-screen-components.dart';
import 'package:colonial_invoice/screens/invoice-second-screen/second-screen-footer.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InvoiceSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Scaffold(
      body: Container(
        child: Responsive(
          mobile: Container(),
          desktop: Container(),
          tablet: Container(
            width: width,
            height: height,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // ColonialHeader(),
                  Stack(
                    children: [
                      Container(
                        height: height / 1.7,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(flex: 4, child: Container()),
                            Expanded(flex: 3, child: Container()),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          width: width,
                          height: height,
                          color: Color(0xFFF1F2F3),
                          margin: EdgeInsets.all(block * 2.5),
                          padding: EdgeInsets.all(block * 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Transfer Out-of-state Questions',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: block * 3.2, color: Colors.black, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(height: block),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  QuestionText(questionNo: '1.', title: 'Do you have a title or registration card?'),
                                  SizedBox(width: block * 2),
                                  CheckOption(
                                    title: 'Yes',
                                    staticValue: 'Yes',
                                    value: controller.isRegistrationCard,
                                    onTap: () => controller.haveRegistrationCard(value: 'Yes'),
                                  ),
                                  SizedBox(width: block * 2),
                                  CheckOption(
                                    title: 'No',
                                    staticValue: 'No',
                                    value: controller.isRegistrationCard,
                                    onTap: () => controller.haveRegistrationCard(value: 'No'),
                                  ),
                                  SizedBox(width: width / 8),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    QuestionText(
                                      questionNo: '2.',
                                      title: 'When did your vehicle last enter for intention of living in California?',
                                    ),
                                  ]),
                                  SizedBox(height: block),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: block * 3.5),
                                      Text('Date' + ': ', style: TextStyle(color: Colors.black, fontSize: block * 2.7)),
                                      SizedBox(width: block),
                                      SelectDate(
                                        onTap: () => controller.selectLastEnterDate(context: context),
                                        date: controller.lastEnterDate == 'null' ? 'Select Date' : controller.lastEnterDate,
                                      ),
                                      SizedBox(width: block),
                                      Text(
                                        '*If more than 20 days, DMV Charges penalty',
                                        style: TextStyle(color: Colors.red, fontSize: block * 2.2),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      QuestionText(questionNo: '3.', title: 'What is the estimated value of your car?'),
                                    ],
                                  ),
                                  SizedBox(height: block),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: block * 3.5),
                                      SizedBox(
                                        width: width / 3.5,
                                        child: QuestionInput(
                                          readOnly: false,
                                          inputType: TextInputType.number,
                                          maxLine: 1,
                                          minLine: 1,
                                          controller: controller.estimatedValue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      QuestionText(questionNo: '4.', title: 'When did you buy this car (Estimated date)?'),
                                    ],
                                  ),
                                  SizedBox(height: block),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: block * 3.5),
                                      Text('Date' + ': ', style: TextStyle(color: Colors.black, fontSize: block * 2.7)),
                                      SizedBox(width: block),
                                      SelectDate(
                                        onTap: () => controller.selectBuyCarDate(context: context),
                                        date: controller.buyCarDate == 'null' ? 'Select Date' : controller.buyCarDate,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      QuestionText(questionNo: '5.', title: 'Is your vehicle financed, leased?'),
                                    ],
                                  ),
                                  SizedBox(height: block),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: block * 3.5),
                                      CheckOption(
                                        title: 'Financed',
                                        staticValue: 'Financed',
                                        value: controller.isFinanced,
                                        onTap: () => controller.selectFinancedVehicle(value: 'Financed'),
                                      ),
                                      SizedBox(width: block * 4),
                                      CheckOption(
                                        title: 'Leased',
                                        staticValue: 'Leased',
                                        value: controller.isFinanced,
                                        onTap: () => controller.selectFinancedVehicle(value: 'Leased'),
                                      ),
                                      SizedBox(width: block * 4),
                                      CheckOption(
                                        title: 'Owned',
                                        staticValue: 'Owned',
                                        value: controller.isFinanced,
                                        onTap: () => controller.selectFinancedVehicle(value: 'Owned'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      QuestionText(
                                        questionNo: '6.',
                                        title: 'If lease or finance car, please write name of the bank adn address?',
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: block),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: block * 3.5),
                                      SizedBox(
                                        width: width / 5,
                                        child: Text('Bank Name', style: TextStyle(color: Colors.black, fontSize: block * 2.7)),
                                      ),
                                      SizedBox(
                                        width: width / 3,
                                        child: QuestionInput(
                                          readOnly: false,
                                          inputType: TextInputType.number,
                                          controller: controller.bankName,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: block),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: block * 3.5),
                                      SizedBox(
                                        width: width / 5,
                                        child: Text('Bank Address', style: TextStyle(color: Colors.black, fontSize: block * 2.7)),
                                      ),
                                      SizedBox(
                                        width: width / 2,
                                        child: QuestionInput(
                                          readOnly: false,
                                          inputType: TextInputType.number,
                                          minLine: 3,
                                          maxLine: 3,
                                          controller: controller.bankAddress,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: block * 3),
                  SecondScreenFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(block * 3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRaisedButton(
              width: width / 4,
              title: 'Edit Invoice',
              padding: block * 2,
              background: Colors.black,
              borderRadius: block / 2,
              fontColor: Colors.white,
              fontSize: block * 2,
              onTap: () => Navigator.of(context).pop(),
            ),
            SizedBox(width: block * 2.5),
            CustomRaisedButton(
              width: width / 4,
              title: 'View Invoice',
              padding: block * 2,
              background: Colors.red,
              borderRadius: block / 2,
              fontColor: Colors.white,
              fontSize: block * 2,
              onTap: () => controller.viewInvoiceOnTap(context: context),
            ),
          ],
        ),
      ),
    );
  }
}
