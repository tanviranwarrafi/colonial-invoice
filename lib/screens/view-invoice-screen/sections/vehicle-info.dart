import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/view-invoice-components.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class VehicleInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Container(
      height: block * 18,
      decoration: BoxDecoration(
        color: Color(0xFFE9E9E7),
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
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
                        flex: 1,
                        child: InvoiceTitle(
                            title: controller.vinController.text.length < 1
                                ? 'VIN #: Not Inserted'
                                : 'VIN #: ${controller.vinController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 1,
                        child: InvoiceTitle(
                            title: controller.stateController.text.length < 1
                                ? 'STATE: Not Inserted'
                                : 'STATE: ${controller.stateController.text}',
                            isRequired: false),
                      ),
                    ],
                  ),
                  SizedBox(height: block * 1.2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: InvoiceTitle(
                            title: controller.licencePlateController.text.length < 1
                                ? 'LICENCE PLATE: Not Inserted'
                                : 'LICENCE PLATE: ${controller.licencePlateController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 3,
                        child: InvoiceTitle(
                            title: controller.expirationController.text.length < 1
                                ? 'EXPIRATION: Not Inserted'
                                : 'EXPIRATION: ${controller.expirationController.text}',
                            isRequired: false),
                      ),
                    ],
                  ),
                  SizedBox(height: block * 1.2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: InvoiceTitle(
                            title: controller.yearController.text.length < 1
                                ? 'YEAR: Not Inserted'
                                : 'YEAR: ${controller.yearController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 2,
                        child: InvoiceTitle(
                            title: controller.makeController.text.length < 1
                                ? 'MAKE: Not Inserted'
                                : 'MAKE: ${controller.makeController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 2,
                        child: InvoiceTitle(
                            title: controller.modelController.text.length < 1
                                ? 'MODEL: Not Inserted'
                                : 'MODEL: ${controller.modelController.text}',
                            isRequired: false),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: block),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: SvgPicture.asset(Images.information, width: double.infinity, height: block * 12, fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
