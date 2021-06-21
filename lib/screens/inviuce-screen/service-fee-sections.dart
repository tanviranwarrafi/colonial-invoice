import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/inviuce-screen/invoice-components.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SmogServiceFee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: TitleText(title: 'SMOG TEST')),
                          Expanded(
                            child: TitleInput(readOnly: false, controller: controller.smogTestController),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: TitleText(title: 'PRETEST')),
                          Expanded(child: TitleInput(readOnly: false, controller: controller.pretestController)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: TitleText(title: 'SMOG CERTIFICATE')),
                          Expanded(child: TitleInput(readOnly: false, controller: controller.smogCertificateController)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: TitleText(title: 'RETEST')),
                          Expanded(child: TitleInput(readOnly: false, controller: controller.retestController)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: TitleText(title: 'TOTAL', isBoldText: true, fontSize: block * 2.5)),
                          Expanded(child: TitleInput(readOnly: true, controller: controller.totalSmogServiceFeeController)),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class VinFees extends StatelessWidget {
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: TitleText(title: 'REGISTRATION FEE')),
                        Expanded(child: TitleInput(readOnly: false, controller: controller.registrationFeeController)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: TitleText(title: 'TAXES')),
                        Expanded(child: TitleInput(readOnly: false, controller: controller.taxesController)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: TitleText(title: 'E.P.F')),
                        Expanded(child: TitleInput(readOnly: false, controller: controller.epfController)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: TitleText(title: 'CITATIONS')),
                        Expanded(child: TitleInput(readOnly: false, controller: controller.citationsController)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: TitleText(title: 'TOTAL', isBoldText: true)),
                        Expanded(child: TitleInput(readOnly: false, controller: controller.totalDmvFeesController)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegistrationFees extends StatelessWidget {
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: TitleText(title: 'REGISTRATION SERVICE FEE')),
                        Expanded(child: TitleInput(readOnly: false, controller: controller.registrationServiceFeeController)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: TitleText(title: 'VIN VERIFICATION')),
                        Expanded(child: TitleInput(readOnly: false, controller: controller.vinVerificationController)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: TitleText(title: 'DAY PERMIT')),
                        Expanded(child: TitleInput(readOnly: false, controller: controller.dayPermitController)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: TitleText(title: 'Credit %2.5-Debit %1')),
                        Expanded(child: TitleInput(readOnly: false, controller: controller.creditDebitController)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: TitleText(title: 'TOTAL', isBoldText: true)),
                        Expanded(child: TitleInput(readOnly: false, controller: controller.totalRegistrationFeeController)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
