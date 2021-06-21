import 'package:colonial_invoice/common/components/buttons.dart';
import 'package:colonial_invoice/common/components/header.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InvoiceSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Scaffold(
      body: Container(
        child: Responsive(
          mobile: Container(),
          desktop: Container(),
          tablet: Container(
            width: width,
            height: height,
            color: Colors.white,
            padding: EdgeInsets.all(block * 2.5),
            // margin: EdgeInsets.all(block * 4),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ColonialHeader(),
                  Text(
                    'Transfer Out-of-state Questions',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: block * 3.5, color: Colors.black, fontWeight: FontWeight.w900),
                  ),
                  /*Text(
                    'Transfer Out-of-state Questions',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: block * 3.5, color: Colors.black, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: block * 3),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('1', style: TextStyle(color: Colors.black, fontSize: block * 2)),
                        ],
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(block * 3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRaisedButton(
              width: width / 4,
              title: 'Edit Invoice',
              padding: block * 2,
              background: Colors.black,
              borderRadius: block / 2,
              fontColor: Colors.white,
              fontSize: block * 2,
              onTap: () {},
            ),
            SizedBox(width: block * 2.5),
            CustomRaisedButton(
              width: width / 4,
              title: 'View Invoice',
              padding: block * 2,
              background: Colors.red,
              borderRadius: block / 2,
              fontColor: Colors.white,
              fontSize: block * 2,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
