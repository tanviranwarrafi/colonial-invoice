import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/home-screen/home-components.dart';
import 'package:colonial_invoice/screens/inviuce-screen/invoice-components.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehicleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Container(
      margin: EdgeInsets.only(left: block * 2, right: block * 2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        // border: Border.all(color: Colors.black, width: 1.5),
        border: Border(
          left: BorderSide(color: Colors.grey, width: 1.5),
          right: BorderSide(color: Colors.grey, width: 1.5),
          bottom: BorderSide(color: Colors.grey, width: 1.5),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
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
                      Flexible(
                        flex: 5,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InvoiceTitle(title: 'VIN #', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.vinController,
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
                            InvoiceTitle(title: 'CASH', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.cashController,
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
                            InvoiceTitle(title: 'CARD', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.cardController,
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
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InvoiceTitle(title: 'LICENCE PLATE', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.licencePlateController,
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
                            InvoiceTitle(title: 'STATE', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.stateController,
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
                            InvoiceTitle(title: 'EXPIRATION', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.expirationController,
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
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InvoiceTitle(title: 'ODOMETER', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.odometerController,
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
                            InvoiceTitle(title: 'YEAR', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.yearController,
                                inputType: TextInputType.number,
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
                            InvoiceTitle(title: 'MAKE', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.makeController,
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
                            InvoiceTitle(title: 'MODEL', isRequired: false),
                            SizedBox(width: block),
                            Flexible(
                              child: CustomerTextField(
                                controller: controller.modelController,
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
            ),
          ),
          SizedBox(width: block),
          Container(width: 2, height: block * 10, color: Colors.black),
          SizedBox(width: block),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(block),
              child: CustomerContactInfo(title: 'VEHICLE INFORMATION', image: Images.car),
            ),
          ),
        ],
      ),
    );
  }
}
