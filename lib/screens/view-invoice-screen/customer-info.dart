import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/home-screen/home-components.dart';
import 'package:colonial_invoice/screens/inviuce-screen/invoice-components.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      Expanded(
                        flex: 4,
                        child: InvoiceTitle(
                            title: controller.nameController.text == null
                                ? 'CUSTOMER NAME: No Name Found'
                                : 'CUSTOMER NAME: ${controller.nameController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 3,
                        child: InvoiceTitle(
                            title: controller.dateController.text == null
                                ? 'DATE: No Date Found'
                                : 'DATE: ${controller.dateController.text}',
                            isRequired: false),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 4,
                        child: InvoiceTitle(
                            title: controller.driverLicController.text == null
                                ? 'DRIVER LIC: No DRIVER LIC Found'
                                : 'DRIVER LIC: ${controller.driverLicController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 3,
                        child: InvoiceTitle(
                            title: controller.phoneController.text == null
                                ? 'PHONE NO: No PHONE NO Found'
                                : 'PHONE NO: ${controller.phoneController.text}',
                            isRequired: false),
                      ),
                    ],
                  ),
                  InvoiceTitle(
                      title: controller.addressController.text == null
                          ? 'ADDRESS: No ADDRESS Found'
                          : 'ADDRESS: ${controller.addressController.text}',
                      isRequired: false),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 4,
                        child: InvoiceTitle(
                            title: controller.emailController.text == null
                                ? 'EMAIL: No EMAIL Found'
                                : 'EMAIL: ${controller.emailController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 4,
                        child: InvoiceTitle(
                            title: controller.paidAmountController.text == null
                                ? 'AMOUNT PAID: Not Found'
                                : 'AMOUNT PAID: ${controller.paidAmountController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 3,
                        child: InvoiceTitle(
                            title: controller.balanceController.text == null
                                ? 'BALANCE: Not Found'
                                : 'BALANCE: ${controller.balanceController.text}',
                            isRequired: false),
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
