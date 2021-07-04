import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/invoice-screen/invoice-components.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GrandTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          left: BorderSide(color: Colors.black, width: 3),
          right: BorderSide(color: Colors.black, width: 3),
          bottom: BorderSide(color: Colors.black, width: 3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: block, bottom: block),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'CREDIT CARD % 2.75',
                  style: TextStyle(fontSize: block * 2.8, color: Colors.black),
                ),
                SizedBox(width: block * 3),
                Container(
                  width: block * 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(color: Colors.black, width: 3),
                      left: BorderSide(color: Colors.black, width: 3),
                      bottom: BorderSide(color: Colors.black, width: 3),
                    ),
                  ),
                  child: TableRowInput(
                    readOnly: true,
                    controller: controller.creditDebitController,
                    color: Color(0xFFE6E6E8),
                    height: block * 4,
                  ),
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('GRAND TOTAL', style: TextStyle(fontSize: block * 2.8, color: Colors.black)),
              SizedBox(width: block * 3),
              Container(
                width: block * 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: Colors.black, width: 3),
                    left: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
                child: TableRowInput(
                  readOnly: true,
                  controller: controller.grandTotalController,
                  color: Color(0xFFF5B2B1),
                  height: block * 4,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
