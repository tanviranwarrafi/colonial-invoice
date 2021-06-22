import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/invoice-screen/invoice-components.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/view-invoice-components.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegistrationFeesInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Expanded(
      child: Table(
        border: TableBorder.all(color: Colors.black, width: 3),
        children: [
          TableRow(decoration: BoxDecoration(color: Colors.red), children: [
            ServiceTitle(
              alignment: MainAxisAlignment.start,
              title: 'REGISTRATION FEES',
              titleColor: Colors.white,
              size: block * 1.5,
              svgImage: Images.numberplate,
              imageColor: null,
            ),
          ]),
          TableRow(children: [SizedBox(height: block)]),
          TableRow(children: [
            Table(
              border: TableBorder.all(color: Colors.black, width: 1.5),
              columnWidths: {1: FractionColumnWidth(0.4), 2: FractionColumnWidth(0.3)},
              children: [
                TableRow(
                  children: [
                    TableRowTitle(
                      title: 'Description',
                      background: Color(0xFFBDBEC0),
                      textAlign: TextAlign.center,
                      alignment: MainAxisAlignment.center,
                      height: block * 5,
                    ),
                    TableRowTitle(
                      title: 'Amount',
                      background: Color(0xFFD2D2D4),
                      textAlign: TextAlign.center,
                      alignment: MainAxisAlignment.center,
                      height: block * 5,
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey, width: 3))),
                  children: [
                    TableRowTitle(title: 'REGISTRATION SERVICE FEE', background: Color(0xFFF2F2F3)),
                    TitleText(title: '${controller.registrationServiceFeeController.text}', color: Color(0xFFF2F2F3)),
                  ],
                ),
                TableRow(children: [
                  TableRowTitle(title: 'VIN VERIFICATION', background: Color(0xFFE6E6E8)),
                  TitleText(title: '${controller.vinVerificationController.text}', color: Color(0xFFE6E6E8)),
                ]),
                TableRow(children: [
                  TableRowTitle(title: 'DAY PERMIT', background: Color(0xFFF2F2F3), height: block * 5),
                  TitleText(
                    title: '${controller.dayPermitController.text}',
                    color: Color(0xFFF2F2F3),
                    height: block * 5,
                  ),
                ]),
                TableRow(children: [
                  TableRowTitle(
                    title: 'TOTAL',
                    background: Color(0xFF949599),
                    titleColor: Colors.white,
                    textAlign: TextAlign.end,
                    alignment: MainAxisAlignment.end,
                    height: block * 5,
                  ),
                  TitleText(
                    title: '${controller.totalRegistrationFeeController.text}',
                    color: Color(0xFFF8DDDC),
                    height: block * 5,
                  ),
                ]),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
