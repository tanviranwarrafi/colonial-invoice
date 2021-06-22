import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/invoice-screen/invoice-components.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/view-invoice-components.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/*class SmogServiceFeeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Expanded(
      child: Container(
        // margin: EdgeInsets.only(left: block * 2),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            left: BorderSide(color: Colors.grey, width: 1.5),
            right: BorderSide(color: Colors.grey, width: 1.5),
            bottom: BorderSide(color: Colors.grey, width: 1.5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1.5),
                    right: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
                child: RowTitle(title: 'SMOG SERVICE FEE', image: Images.weather, bottom: true),
              ),
            ),
            // Expanded(flex: 2, child: RowTitle(title: 'SMOG SERVICE FEE', image: Images.weather, bottom: true, right: true)),
            Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                            // top: BorderSide(color: Colors.grey, width: 1.5),
                            bottom: BorderSide(color: Colors.grey, width: 1.5),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: TitleText(title: 'DESCRIPTION')),
                            Expanded(child: TitleText(title: 'AMOUNT')),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TitleText(
                          title: controller.smogTestController.text == null
                              ? 'SMOG TEST: Not Found'
                              : 'SMOG TEST: ${controller.smogTestController.text}'),
                    ),
                    Expanded(
                        child: TitleText(
                            title: controller.pretestController.text == null
                                ? 'PRETEST: Not Found'
                                : 'PRETEST: ${controller.pretestController.text}')),
                    Expanded(
                        child: TitleText(
                            title: controller.smogCertificateController.text == null
                                ? 'SMOG CERTIFICATE: Not Found'
                                : 'SMOG CERTIFICATE: ${controller.smogCertificateController.text}')),
                    Expanded(
                      child: TitleText(
                          title: controller.retestController.text == null
                              ? 'RETEST: Not Found'
                              : 'RETEST: ${controller.retestController.text}'),
                    ),
                    Expanded(
                        child: TitleText(
                            title: controller.totalSmogServiceFeeController.text == null
                                ? 'TOTAL: Not Found'
                                : 'TOTAL: ${controller.totalSmogServiceFeeController.text}',
                            isBoldText: true)),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}*/

/*class VinFeesInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            right: BorderSide(color: Colors.grey, width: 1.5),
            bottom: BorderSide(color: Colors.grey, width: 1.5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1.5),
                    right: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
                child: RowTitle(title: 'DMV FEES', image: Images.dmv, bottom: true),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border(
                          // top: BorderSide(color: Colors.grey, width: 1.5),
                          bottom: BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: TitleText(title: 'DESCRIPTION')),
                          Expanded(child: TitleText(title: 'AMOUNT')),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: TitleText(
                          title: controller.registrationFeeController.text == null
                              ? 'REGISTRATION FEE: Not Found'
                              : 'REGISTRATION FEE: ${controller.registrationFeeController.text}')),
                  Expanded(
                      child: TitleText(
                          title: controller.taxesController.text == null
                              ? 'TAXES: Not Found'
                              : 'TAXES: ${controller.taxesController.text}')),
                  Expanded(
                      child: TitleText(
                          title: controller.epfController.text == null
                              ? 'E.P.F: Not Found'
                              : 'E.P.F: ${controller.epfController.text}')),
                  Expanded(
                      child: TitleText(
                          title: controller.citationsController.text == null
                              ? 'CITATIONS: Not Found'
                              : 'CITATIONS: ${controller.citationsController.text}')),
                  Expanded(
                      child: TitleText(
                          title: controller.totalDmvFeesController.text == null
                              ? 'TOTAL: Not Found'
                              : 'TOTAL: ${controller.totalDmvFeesController.text}',
                          isBoldText: true)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

class RegistrationFeesInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            right: BorderSide(color: Colors.grey, width: 1.5),
            bottom: BorderSide(color: Colors.grey, width: 1.5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1.5),
                    right: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
                child: RowTitle(title: 'REGISTRATION FEES', image: Images.dmv, bottom: true),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 1.5),
                          right: BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: TitleText(title: 'DESCRIPTION')),
                          Expanded(child: TitleText(title: 'AMOUNT')),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: TitleText(
                          title: controller.registrationServiceFeeController.text == null
                              ? 'REGISTRATION SERVICE FEE: Not Found'
                              : 'REGISTRATION SERVICE FEE: ${controller.registrationServiceFeeController.text}')),
                  Expanded(
                      child: TitleText(
                          title: controller.vinVerificationController.text == null
                              ? 'VIN VERIFICATION: Not Found'
                              : 'VIN VERIFICATION: ${controller.vinVerificationController.text}')),
                  Expanded(
                      child: TitleText(
                          title: controller.dayPermitController.text == null
                              ? 'DAY PERMIT: Not Found'
                              : 'DAY PERMIT: ${controller.dayPermitController.text}')),
                  Expanded(
                      child: TitleText(
                          title: controller.creditDebitController.text == null
                              ? 'Credit %2.5-Debit %1: Not Found'
                              : 'Credit %2.5-Debit %1: ${controller.creditDebitController.text}')),
                  Expanded(
                      child: TitleText(
                          title: controller.totalRegistrationFeeController.text == null
                              ? 'TOTAL: Not Found'
                              : 'TOTAL: ${controller.totalRegistrationFeeController.text}',
                          isBoldText: true)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
