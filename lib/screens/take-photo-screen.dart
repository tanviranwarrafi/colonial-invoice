import 'package:colonial_invoice/common/components/buttons.dart';
import 'package:colonial_invoice/common/components/header.dart';
import 'package:colonial_invoice/common/components/loaders.dart';
import 'package:colonial_invoice/common/components/text-field-materials.dart';
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
                            SizedBox(height: block * 2),
                            Center(
                              child: SizedBox(
                                width: width / 2,
                                child: TextFormField(
                                  controller: controller.email,
                                  enabled: true,
                                  minLines: 1,
                                  maxLines: 1,
                                  readOnly: false,
                                  showCursor: true,
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Colors.black,
                                  cursorHeight: block * 3,
                                  style: textStyle(),
                                  onEditingComplete: () => FocusScope.of(context).unfocus(),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabled: true,
                                    isDense: true,
                                    hintText: 'Enter Email',
                                    contentPadding: EdgeInsets.all(block * 1.5),
                                    border: outlineBorder(color: Colors.black, radius: block / 2, width: 1.5),
                                    disabledBorder: outlineBorder(color: Colors.black, radius: block / 2, width: 1.5),
                                    enabledBorder: outlineBorder(color: Colors.black, radius: block / 2, width: 1.5),
                                    errorBorder: outlineBorder(color: Colors.black, radius: block / 2, width: 1.5),
                                    focusedBorder: outlineBorder(color: Colors.black, radius: block / 2, width: 1.5),
                                    focusedErrorBorder: outlineBorder(color: Colors.black, radius: block / 2, width: 1.5),
                                  ),
                                  onSaved: (text) => controller.email.text = text,
                                ),
                              ),
                            ),
                            SizedBox(height: block * 6),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomRaisedButton(
                                    width: width / 2.5,
                                    padding: block * 2.5,
                                    background: Colors.red,
                                    borderRadius: block / 2,
                                    fontColor: Colors.white,
                                    fontSize: block * 3,
                                    title: 'Back To Home',
                                    onTap: () => Navigator.of(context).pop()),
                                SizedBox(width: block * 2),
                                CustomRaisedButton(
                                    width: width / 2.5,
                                    padding: block * 2.5,
                                    background: Colors.black,
                                    borderRadius: block / 2,
                                    fontColor: Colors.white,
                                    fontSize: block * 3,
                                    title: 'Submit Invoice',
                                    onTap: () => controller.sendImageOnTap(context: context)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
            )),
      ),
    );
  }
}
