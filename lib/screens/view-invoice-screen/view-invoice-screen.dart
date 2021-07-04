import 'package:colonial_invoice/common/components/buttons.dart';
import 'package:colonial_invoice/common/components/header.dart';
import 'package:colonial_invoice/common/components/loaders.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/invoice-screen/invoice-components.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/sections/customer-info.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/sections/dmv-fees-info.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/sections/grand-total-info.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/sections/questions-info.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/sections/registration-fees-info.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/sections/signing-info.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/sections/smog-service-info.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/sections/vehicle-info.dart';
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
          tablet: Stack(
            children: [
              Container(
                width: width,
                height: height,
                color: Colors.white,
                padding: EdgeInsets.all(block * 2.5),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ColonialHeader(),
                      SectionTitle(
                        title: 'CUSTOMER CONTACT INFORMATION',
                        titleColor: Colors.black,
                        pngImage: null,
                        svgImage: Images.user,
                        imageColor: Colors.red,
                        alignment: MainAxisAlignment.start,
                      ),
                      SizedBox(height: block * 1.5),
                      CustomerInfo(),
                      SizedBox(height: block * 3),
                      SectionTitle(
                        title: 'VEHICLE INFORMATION',
                        titleColor: Colors.black,
                        pngImage: null,
                        svgImage: Images.vehicle,
                        imageColor: Colors.red,
                        alignment: MainAxisAlignment.start,
                      ),
                      SizedBox(height: block * 1.5),
                      VehicleInfo(),
                      SizedBox(height: block * 3),
                      SectionTitle(
                        title: 'SERVICES FEE',
                        titleColor: Colors.black,
                        pngImage: null,
                        svgImage: Images.dollarSvg,
                        imageColor: Colors.red,
                        alignment: MainAxisAlignment.start,
                      ),
                      SizedBox(height: block * 1.5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SmogServiceInfo(),
                          SizedBox(width: block),
                          DMVFeesInfo(),
                          SizedBox(width: block),
                          RegistrationFeesInfo(),
                        ],
                      ),
                      SizedBox(height: block * 1.5),
                      GrandTotalInfo(),
                      SizedBox(height: block * 3),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.help_outline, color: Colors.red, size: block * 4.5),
                          SizedBox(width: block),
                          Text(
                            'Transfer Out-of-state Questions',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: block * 2.8, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: block * 1.5),
                      QuestionsInfo(),
                      SizedBox(height: block * 3),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.live_help, color: Colors.red, size: block * 4.5),
                          SizedBox(width: block),
                          Text(
                            'Signing Info',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: block * 2.8, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: block * 1.5),
                      SigningInfo(),
                    ],
                  ),
                ),
              ),
              value.loader
                  ? Positioned(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white60,
                        child: Center(child: Loader()),
                      ),
                    )
                  : SizedBox.shrink(),
            ],
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
              title: 'Update Invoice',
              padding: block * 2,
              background: Colors.red,
              borderRadius: block / 2,
              fontColor: Colors.white,
              fontSize: block * 2,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
            SizedBox(width: block * 2.5),
            CustomRaisedButton(
              width: width / 4,
              title: 'Submit Invoice',
              padding: block * 2,
              background: Colors.black,
              borderRadius: block / 2,
              fontColor: Colors.white,
              fontSize: block * 2,
              onTap: () => controller.submitInvoiceOnTap(context: context),
            ),
          ],
        ),
      ),
    );
  }
}
