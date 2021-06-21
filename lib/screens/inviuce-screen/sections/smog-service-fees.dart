import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/inviuce-screen/invoice-components.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SmogServiceFees extends StatelessWidget {
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
              title: 'SMOG SERVICES FEES',
              titleColor: Colors.white,
              size: block * 1.5,
              svgImage: Images.foggy,
              imageColor: Colors.white,
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
                    TableRowTitle(title: 'SMOG TEST', background: Color(0xFFF2F2F3)),
                    TableRowInput(
                      readOnly: false,
                      controller: controller.smogTestController,
                      color: Color(0xFFE6E6E8),
                    ),
                  ],
                ),
                TableRow(children: [
                  TableRowTitle(title: 'SMOG CERTIGFICATE', background: Color(0xFFE6E6E8)),
                  TableRowInput(
                    readOnly: false,
                    controller: controller.smogCertificateController,
                    color: Color(0xFFE6E6E8),
                  )
                ]),
                TableRow(children: [
                  TableRowTitle(
                    title: 'RETEST',
                    background: Color(0xFFF2F2F3),
                    height: block * 5,
                  ),
                  TableRowInput(
                    readOnly: false,
                    controller: controller.pretestController,
                    color: Color(0xFFE6E6E8),
                    height: block * 5,
                  )
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
                  TableRowInput(
                    readOnly: true,
                    controller: controller.totalSmogServiceFeeController,
                    color: Color(0xFFF8DDDC),
                    height: block * 5,
                  )
                ]),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
