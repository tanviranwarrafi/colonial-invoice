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
                            title: controller.vinController.text == null
                                ? 'VIN #: Not Found'
                                : 'VIN #: ${controller.vinController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 1,
                        child: InvoiceTitle(
                            title: controller.stateController.text == null
                                ? 'STATE: Not Found'
                                : 'STATE: ${controller.stateController.text}',
                            isRequired: false),
                      ),
                      /* Expanded(
                        flex: 3,
                        child: InvoiceTitle(
                            title: controller.cashController.text == null
                                ? 'CASH: Not Found'
                                : 'CASH: ${controller.cashController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 3,
                        child: InvoiceTitle(
                            title: controller.cardController.text == null
                                ? 'CARD: Not Found'
                                : 'CARD: ${controller.cardController.text}',
                            isRequired: false),
                      ),*/
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
                            title: controller.licencePlateController.text == null
                                ? 'LICENCE PLATE: Not Found'
                                : 'LICENCE PLATE: ${controller.licencePlateController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 3,
                        child: InvoiceTitle(
                            title: controller.expirationController.text == null
                                ? 'EXPIRATION: Not Found'
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
                      /*Expanded(
                        flex: 3,
                        child: InvoiceTitle(
                            title: controller.odometerController.text == null
                                ? 'ODOMETER: Not Found'
                                : 'ODOMETER: ${controller.odometerController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),*/
                      Expanded(
                        flex: 2,
                        child: InvoiceTitle(
                            title: controller.yearController.text == null
                                ? 'YEAR: Not Found'
                                : 'YEAR: ${controller.yearController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 2,
                        child: InvoiceTitle(
                            title: controller.makeController.text == null
                                ? 'MAKE: Not Found'
                                : 'MAKE: ${controller.makeController.text}',
                            isRequired: false),
                      ),
                      SizedBox(width: block),
                      Expanded(
                        flex: 2,
                        child: InvoiceTitle(
                            title: controller.modelController.text == null
                                ? 'MODEL: Not Found'
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
