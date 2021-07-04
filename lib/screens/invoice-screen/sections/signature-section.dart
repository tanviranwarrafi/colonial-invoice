import 'dart:typed_data';

import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hand_signature/signature.dart';
import 'package:provider/provider.dart';

class SignatureSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var block = SizeConfig.block;
    InvoiceController controller = Provider.of<InvoiceController>(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(block * 2.5),
            decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: Colors.red, width: 2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your signature below indicates you agree to the ESTIMATED QUOTE and TERMS & CONDITIONS listed above',
                  style: TextStyle(color: Colors.black, fontSize: block * 1.8),
                ),
                SizedBox(height: block),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        height: block * 14,
                        color: Color(0xFFF2F2F3),
                        padding: EdgeInsets.all(block),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Customer Signature',
                              style: TextStyle(fontSize: block * 2.5, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(height: block),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: controller.isEdit
                                        ? Stack(
                                            children: <Widget>[
                                              Container(
                                                constraints: BoxConstraints.expand(),
                                                color: Colors.white,
                                                child: HandSignaturePainterView(
                                                  control: controller.control,
                                                  type: SignatureDrawType.shape,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              CustomPaint(
                                                painter: DebugSignaturePainterCP(
                                                  control: controller.control,
                                                  cp: false,
                                                  cpStart: false,
                                                  cpEnd: false,
                                                ),
                                              ),
                                            ],
                                          )
                                        : Container(
                                            constraints: BoxConstraints.expand(),
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black, width: 2),
                                              color: Colors.transparent,
                                            ),
                                            child: ValueListenableBuilder<ByteData>(
                                              valueListenable: controller.rawImage,
                                              builder: (context, data, child) {
                                                return Padding(
                                                  padding: EdgeInsets.all(block),
                                                  child: Image.memory(data.buffer.asUint8List(), color: Colors.black),
                                                );
                                              },
                                            ),
                                          ),
                                  ),
                                  SizedBox(width: block),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      controller.isEdit
                                          ? SizedBox.shrink()
                                          : InkWell(
                                              onTap: () => controller.editSignOnTap(),
                                              child: CircleAvatar(
                                                radius: block * 1.5,
                                                backgroundColor: Colors.amber,
                                                child: Icon(Icons.edit, color: Colors.white),
                                              ),
                                            ),
                                      controller.isEdit ? SizedBox.shrink() : SizedBox(height: block / 2),
                                      controller.isEdit
                                          ? InkWell(
                                              onTap: () => controller.clearSignOnTap(),
                                              child: CircleAvatar(
                                                radius: block * 1.5,
                                                backgroundColor: Colors.red,
                                                child: Icon(Icons.clear, color: Colors.white),
                                              ),
                                            )
                                          : SizedBox.shrink(),
                                      controller.isEdit ? SizedBox(height: block / 2) : SizedBox.shrink(),
                                      controller.isEdit
                                          ? InkWell(
                                              onTap: () => controller.exportSignOnTap(context: context),
                                              child: CircleAvatar(
                                                radius: block * 1.5,
                                                backgroundColor: Colors.green,
                                                child: Icon(Icons.check, color: Colors.white),
                                              ),
                                            )
                                          : SizedBox.shrink(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: block * 2.5),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: block * 14,
                        color: Color(0xFFF2F2F3),
                        padding: EdgeInsets.all(block),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Date Service',
                              style: TextStyle(fontSize: block * 2.5, fontWeight: FontWeight.w900),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () => controller.selectSigningDate(context: context),
                                child: Text(
                                  controller.signingDate == 'null' ? 'Signing Date' : controller.signingDate,
                                  style: TextStyle(
                                      fontSize: block * 2,
                                      fontWeight: FontWeight.w500,
                                      color: controller.signingDate == 'null' ? Colors.red : Colors.black,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: block * 2.5),
        Container(
          width: width / 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(Images.qr, width: width / 6, fit: BoxFit.cover, height: width / 6),
              SizedBox(height: block / 3),
              Text(
                'Scan here to \nwrite a review!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: block * 2),
              )
            ],
          ),
        ),
      ],
    );
  }
}
