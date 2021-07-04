import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/view-invoice-components.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Container(
      padding: EdgeInsets.all(block * 2),
      decoration: BoxDecoration(
        color: Color(0xFFE9E9E7),
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: InvoiceTitle(
                    title: controller.nameController.text.length < 1
                        ? 'CUSTOMER NAME: No Name Inserted'
                        : 'CUSTOMER NAME: ${controller.nameController.text}',
                    isRequired: false),
              ),
              SizedBox(width: block),
              Expanded(
                flex: 3,
                child: InvoiceTitle(
                    title: controller.driverLicController.text.length < 1
                        ? 'DRIVER LIC: No LIC Found'
                        : 'DRIVER LIC: ${controller.driverLicController.text}',
                    isRequired: false),
              ),
              SizedBox(width: block),
              Expanded(
                flex: 2,
                child: InvoiceTitle(
                    title: controller.dateController.text.length < 1
                        ? 'DATE: No Date Found'
                        : 'DATE: ${controller.dateController.text}',
                    isRequired: false),
              ),
            ],
          ),
          SizedBox(height: block * 1.2),
          InvoiceTitle(
              title: controller.addressController.text.length < 1
                  ? 'ADDRESS: No Address Inserted'
                  : 'ADDRESS: ${controller.addressController.text}',
              isRequired: false),
          SizedBox(height: block * 1.2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: InvoiceTitle(
                    title: controller.phoneController.text.length < 1
                        ? 'PHONE NO: No Phone Number Inserted'
                        : 'PHONE NO: ${controller.phoneController.text}',
                    isRequired: false),
              ),
              SizedBox(width: block),
              Expanded(
                flex: 1,
                child: InvoiceTitle(
                    title: controller.emailController.text.length < 1
                        ? 'EMAIL: No Email Inserted'
                        : 'EMAIL: ${controller.emailController.text}',
                    isRequired: false),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
