import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/home-screen/home-components.dart';
import 'package:colonial_invoice/screens/inviuce-screen/invoice-components.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Container(
      margin: EdgeInsets.only(top: block * 2, left: block * 2, right: block * 2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(block),
              child: CustomerContactInfo(
                title: 'CUSTOMER CONTACT INFORMATION',
                image: Images.contact,
              ),
            ),
          ),
          SizedBox(width: block),
          Container(width: 2, height: block * 10, color: Colors.black),
          SizedBox(width: block),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(block * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InvoiceTitle(title: 'CUSTOMER NAME', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.nameController,
                                inputType: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InvoiceTitle(title: 'DATE', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.dateController,
                                inputType: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InvoiceTitle(title: 'DRIVER LIC', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.driverLicController,
                                inputType: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InvoiceTitle(title: 'PHONE NO', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.phoneController,
                                inputType: TextInputType.phone,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InvoiceTitle(title: 'ADDRESS', isRequired: false),
                      SizedBox(width: block),
                      Flexible(
                        child: CustomerTextField(
                          controller: controller.addressController,
                          inputType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InvoiceTitle(title: 'EMAIL', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.emailController,
                                inputType: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InvoiceTitle(title: 'AMOUNT PAID', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.paidAmountController,
                                inputType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InvoiceTitle(title: 'BALANCE', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.balanceController,
                                inputType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
