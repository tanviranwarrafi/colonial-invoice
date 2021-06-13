import 'package:colonial_invoice/common/components/buttons.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/controllers/home-controller.dart';
import 'package:colonial_invoice/screens/invoice-screen.dart';
import 'package:colonial_invoice/screens/take-photo-screen.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  HomeController controller = HomeController();
  TabController tabController;

  @override
  void initState() {
    // controller.onInit();
    tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    return DoubleBack(
      message: 'Press back again to close',
      child: Scaffold(
        body: Responsive(
          tablet: Container(
            height: height,
            width: width,
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height,
                  padding: EdgeInsets.all(block * 3),
                  child: Row(
                    children: [
                      Expanded(flex: 3, child: colonialImage(context)),
                      SizedBox(width: block * 3),
                      Container(height: height / 3.5, width: 5, color: Colors.grey[300]),
                      SizedBox(width: block * 3),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            invoice(context),
                            SizedBox(height: block),
                            or(context),
                            SizedBox(height: block),
                            takePhoto(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          mobile: Container(),
          desktop: Container(),
        ),
      ),
    );
  }

  Widget colonialImage(BuildContext context) {
    var block = SizeConfig.block;
    return Image.asset(Images.colonialInvoice, width: block * 35, height: block * 35);
  }

  Widget invoice(BuildContext context) {
    var block = SizeConfig.block;
    var width = SizeConfig.screenWidth;
    bool isWeb = Responsive.isDesktop(context);
    return CustomRaisedButton(
      width: width / 2.5,
      padding: block * 2.5,
      background: Colors.red,
      borderRadius: block / 2,
      fontColor: Colors.white,
      fontSize: block * 3,
      title: 'Write Invoice',
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => InvoiceScreen())),
    );
  }

  Widget or(BuildContext context) {
    var block = SizeConfig.block;
    bool isWeb = Responsive.isDesktop(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: block * 3, height: 5, color: Colors.grey[300]),
        SizedBox(width: block * 2),
        Text(
          'or',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isWeb ? block * 2 : block * 3,
            fontFamily: 'AvenirNextCyr',
            color: Colors.black,
          ),
        ),
        SizedBox(width: block * 2),
        Container(width: block * 3, height: 5, color: Colors.grey[300]),
      ],
    );
  }

  Widget takePhoto(BuildContext context) {
    var block = SizeConfig.block;
    var width = SizeConfig.screenWidth;
    return CustomRaisedButton(
      width: width / 2.5,
      padding: block * 2.5,
      background: Colors.grey,
      borderRadius: block / 2,
      fontColor: Colors.white,
      fontSize: block * 3,
      title: 'Take Photo',
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TakePhotoScreen())),
    );
  }
}
