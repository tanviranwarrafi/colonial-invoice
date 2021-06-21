import 'package:colonial_invoice/common/components/header.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/screens/inviuce-screen/invoice-components.dart';
import 'package:colonial_invoice/screens/inviuce-screen/sections/customer-scetion.dart';
import 'package:colonial_invoice/screens/inviuce-screen/sections/dmv-fees.dart';
import 'package:colonial_invoice/screens/inviuce-screen/sections/grand-total.dart';
import 'package:colonial_invoice/screens/inviuce-screen/sections/registration-fees.dart';
import 'package:colonial_invoice/screens/inviuce-screen/sections/smog-service-fees.dart';
import 'package:colonial_invoice/screens/inviuce-screen/sections/terms-and-conditions.dart';
import 'package:colonial_invoice/screens/inviuce-screen/sections/vehicle-section.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InvoiceScreen extends StatefulWidget {
  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
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
            padding: EdgeInsets.all(block * 2.5),
            // margin: EdgeInsets.all(block * 4),
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
                  CustomerSection(),
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
                  VehicleSection(),
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
                      SmogServiceFees(),
                      SizedBox(width: block),
                      DMVFees(),
                      SizedBox(width: block),
                      RegistrationFees(),
                    ],
                  ),
                  GrandTotal(),
                  SizedBox(height: block * 3),
                  TermsAndConditions(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
