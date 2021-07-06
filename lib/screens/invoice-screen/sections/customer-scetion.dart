import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/invoice-screen/invoice-components.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/view-invoice-components.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerSection extends StatelessWidget {
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
                flex: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InvoiceTitle(title: 'CUSTOMER NAME', isRequired: true),
                    SizedBox(width: block),
                    Flexible(
                      child: CustomerTextField(
                        controller: controller.nameController,
                        inputType: TextInputType.text,
                        readOnly: false,
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
                    InvoiceTitle(title: 'DRIVER LIC#', isRequired: true),
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
            ],
          ),
          SizedBox(height: block * 1.2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InvoiceTitle(title: 'ADDRESS', isRequired: true),
              SizedBox(width: block),
              Flexible(
                child: CustomerTextField(
                  controller: controller.addressController,
                  inputType: TextInputType.text,
                ),
              ),
            ],
          ),
          SizedBox(height: block * 1.2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InvoiceTitle(title: 'PHONE NO', isRequired: true),
                    SizedBox(width: block),
                    Flexible(
                      child: CustomerTextField(
                        controller: controller.phoneController,
                        inputType: TextInputType.phone,
                        readOnly: false,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: block),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InvoiceTitle(title: 'EMAIL', isRequired: true),
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
            ],
          ),
        ],
      ),
    );
  }
}
