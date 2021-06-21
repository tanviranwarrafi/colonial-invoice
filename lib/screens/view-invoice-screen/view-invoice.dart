import 'package:colonial_invoice/common/components/header.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/invoice-screen/invoice-components.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/customer-info.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/service-fee-info.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/vehicle-info.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewInvoiceScreen extends StatefulWidget {
  @override
  _ViewInvoiceScreenState createState() => _ViewInvoiceScreenState();
}

class _ViewInvoiceScreenState extends State<ViewInvoiceScreen> {
  InvoiceController controller = InvoiceController();
  InvoiceController value = InvoiceController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    controller = Provider.of<InvoiceController>(context, listen: false);
    value = Provider.of<InvoiceController>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    return Scaffold(
      body: Container(
        child: Responsive(
          mobile: Container(),
          desktop: Container(),
          tablet: Container(
            width: width,
            height: height,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: ColonialHeader()),
                Expanded(flex: 3, child: CustomerInfo()),
                Expanded(flex: 2, child: VehicleInfo()),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: block * 2, right: block * 2),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 1.5),
                        left: BorderSide(color: Colors.grey, width: 1.5),
                        right: BorderSide(color: Colors.grey, width: 1.5),
                        bottom: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                    child: RowTitle(title: 'SERVICE FEE', image: Images.dollar),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(left: block * 2, right: block * 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmogServiceFeeInfo(),
                        VinFeesInfo(),
                        RegistrationFeesInfo(),
                      ],
                    ),
                  ),
                ),
                /*Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: block * 2, right: block * 2),
                    // padding: EdgeInsets.all(block * 2),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        left: BorderSide(color: Colors.grey, width: 1.5),
                        right: BorderSide(color: Colors.grey, width: 1.5),
                        bottom: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Container()),
                        Expanded(
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(color: Colors.grey, width: 1.5),
                                ),
                              ),
                              child: Center(child: TitleText(title: 'Grand Total', isBoldText: true, fontSize: block * 3)),
                            )),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                ),*/
                /*Expanded(
                  flex: 1,
                  child: Center(
                    child: CustomRaisedButton(
                        width: width / 2.5,
                        padding: block * 2.5,
                        background: Colors.black,
                        borderRadius: block / 2,
                        fontColor: Colors.white,
                        fontSize: block * 3,
                        title: 'View Invoice',
                        onTap: () => null),
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
