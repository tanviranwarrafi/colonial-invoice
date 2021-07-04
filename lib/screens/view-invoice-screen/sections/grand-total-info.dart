import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GrandTotalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 1, child: Container()),
              SizedBox(width: block),
              Expanded(
                flex: 1,
                child: Text(
                  'CREDIT CARD % 2.75',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: block * 2.8, color: Colors.black),
                ),
              ),
              SizedBox(width: block),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(block),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                  child: Center(
                      child: Text(
                    controller.creditDebitController.text.length > 0 ? '\$${controller.creditDebitController.text}' : '\$0.00',
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: block * 2.5),
                  )),
                ),
              ),
            ],
          ),
          SizedBox(height: block),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 1, child: Container()),
              SizedBox(width: block),
              Expanded(
                flex: 1,
                child: Text(
                  'GRAND TOTAL',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: block * 2.8, color: Colors.black),
                ),
              ),
              SizedBox(width: block),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(block),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      controller.grandTotalController.text.length > 0 ? '\$${controller.grandTotalController.text}' : '\$0.00',
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: block * 2.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
