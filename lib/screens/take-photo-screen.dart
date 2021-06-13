import 'package:colonial_invoice/common/components/buttons.dart';
import 'package:colonial_invoice/common/components/header.dart';
import 'package:colonial_invoice/common/responsive.dart';
import 'package:colonial_invoice/controllers/take-photo-controller.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TakePhotoScreen extends StatefulWidget {
  @override
  _TakePhotoScreenState createState() => _TakePhotoScreenState();
}

class _TakePhotoScreenState extends State<TakePhotoScreen> {
  TakePhotoController controller = TakePhotoController();
  TakePhotoController value = TakePhotoController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    controller = Provider.of<TakePhotoController>(context, listen: false);
    value = Provider.of<TakePhotoController>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;

    final captureImage = InkWell(
      onTap: () => controller.pickImageFromCamera(context: context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.file_upload, size: block * 8),
          SizedBox(height: block),
          Text(
            value.selectedImage != null ? 'Change Invoice Image' : 'Capture Your Invoice',
            style: TextStyle(fontSize: block * 3, color: Colors.black),
          ),
        ],
      ),
    );

    final submit = CustomRaisedButton(
        width: width / 2.5,
        padding: block * 2.5,
        background: Colors.black,
        borderRadius: block / 2,
        fontColor: Colors.white,
        fontSize: block * 3,
        title: 'Submit Invoice',
        onTap: () => null);

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
                ColonialHeader(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      value.selectedImage == null
                          ? SizedBox.shrink()
                          : Container(
                              width: width / 2.5,
                              height: width / 2.5,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
                              child: Image.asset(value.selectedImage.path, fit: BoxFit.cover),
                            ),
                      SizedBox(height: block * 2),
                      captureImage,
                      SizedBox(height: block * 6),
                      submit,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
