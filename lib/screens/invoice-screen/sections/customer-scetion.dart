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
                    InvoiceTitle(title: 'DRIVER LIC#', isRequired: false),
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
                flex: 2,
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
          SizedBox(height: block * 1.2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Row(
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
          SizedBox(height: block * 1.2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
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
                flex: 3,
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
    );
  }
}
