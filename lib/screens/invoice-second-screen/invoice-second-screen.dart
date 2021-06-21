import 'package:colonial_invoice/common/components/buttons.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/invoice-second-screen/second-screen-components.dart';
import 'package:colonial_invoice/utils/images.dart';
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
                        height: height / 1.5,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(flex: 4, child: Container()),
                            Expanded(flex: 3, child: Container(color: Colors.red)),
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
                              SizedBox(height: block * 3),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Question(questionNo: '1.', title: 'Do you have a title or registration card?'),
                                  SizedBox(width: block * 2),
                                  CheckOption(title: 'Yes', value: 'yes'),
                                  SizedBox(width: block * 2),
                                  CheckOption(title: 'No', value: 'no'),
                                  SizedBox(width: width / 8),
                                ],
                              ),
                              SizedBox(height: block * 3),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    Question(
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
                                      Text('Date' + ': ', style: TextStyle(color: Colors.black, fontSize: block * 3)),
                                      SizedBox(width: block),
                                      Text('Select Last Enter Date', style: TextStyle(color: Colors.red, fontSize: block * 3)),
                                      SizedBox(width: block),
                                      Text(
                                        '*If more than 20 days, DMV Charges penalty',
                                        style: TextStyle(color: Colors.red, fontSize: block * 2.2),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: block * 3),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Question(questionNo: '3.', title: 'What is the estimated value of your car?'),
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
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: block * 3),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Question(questionNo: '4.', title: 'When did you buy this car (Estimated date)?'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: block * 3),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Question(questionNo: '5.', title: 'Is your vehicle finamced, leased?'),
                                    ],
                                  ),
                                  SizedBox(height: block),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: block * 3.5),
                                      CheckOption(title: 'Financed', value: 'yes'),
                                      SizedBox(width: block * 4),
                                      CheckOption(title: 'Leased', value: 'no'),
                                      SizedBox(width: block * 4),
                                      CheckOption(title: 'Owned', value: 'no'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: block * 3),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Question(
                                          questionNo: '6.',
                                          title: 'If lease or finance car, please write name of the bank adn address?'),
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
                                        child: Text('Bank Name', style: TextStyle(color: Colors.black, fontSize: block * 3)),
                                      ),
                                      SizedBox(
                                        width: width / 3,
                                        child: QuestionInput(
                                          readOnly: false,
                                          inputType: TextInputType.number,
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
                                        child: Text('Bank Address', style: TextStyle(color: Colors.black, fontSize: block * 3)),
                                      ),
                                      SizedBox(
                                        width: width / 3,
                                        child: QuestionInput(
                                          readOnly: false,
                                          inputType: TextInputType.number,
                                          minLine: 3,
                                          maxLine: 5,
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
                  Container(
                    padding: EdgeInsets.only(right: block * 7, left: block * 7, top: block, bottom: block),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Count on us for', style: TextStyle(fontSize: block * 4, fontWeight: FontWeight.bold)),
                        SizedBox(height: block),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'FAST',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: block * 4,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              ',',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: block * 4,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              'FAIR',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: block * 4,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              ' ' + 'and' + ' ',
                              style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'FRIENDLY' + ' ',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: block * 4,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              'service!',
                              style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: block * 2),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Image.asset(Images.colonialInvoice,
                                    width: block * 25, height: block * 25, fit: BoxFit.cover)),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('+1 858-267-4510', style: TextStyle(fontSize: block * 3.2, fontWeight: FontWeight.w600)),
                                  SizedBox(height: block / 2),
                                  Text('smog@colonialgarage.net',
                                      style: TextStyle(fontSize: block * 2.8, fontWeight: FontWeight.w600)),
                                  SizedBox(height: block / 2),
                                  Text('www.colonialgarage.net',
                                      style: TextStyle(fontSize: block * 2.8, fontWeight: FontWeight.w600)),
                                  SizedBox(height: block / 2),
                                  Text('7618 Herschel Avenue,', style: TextStyle(fontSize: block * 2.8)),
                                  SizedBox(height: block / 2),
                                  Text('La Jolla, CA 92037', style: TextStyle(fontSize: block * 2.8)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
              onTap: () {},
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
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
