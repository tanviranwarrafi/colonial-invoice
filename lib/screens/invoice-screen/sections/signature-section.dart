import 'package:colonial_invoice/common/components/text-field-materials.dart';
import 'package:colonial_invoice/controllers/invoice-controller.dart';
import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                            TextFormField(
                              controller: controller.signingName,
                              enabled: true,
                              minLines: 1,
                              maxLines: 1,
                              readOnly: false,
                              showCursor: true,
                              keyboardType: TextInputType.text,
                              cursorColor: Colors.black,
                              cursorHeight: block * 3,
                              style: textStyle(),
                              onEditingComplete: () => FocusScope.of(context).unfocus(),
                              decoration: InputDecoration(
                                enabled: true,
                                isDense: true,
                                filled: true,
                                fillColor: Colors.transparent,
                                contentPadding: EdgeInsets.all(block / 1.5),
                                /*border: withOutBorder(),
                                disabledBorder: withOutBorder(),
                                enabledBorder: withOutBorder(),
                                errorBorder: withOutBorder(),
                                focusedBorder: withOutBorder(),
                                focusedErrorBorder: withOutBorder(),*/
                              ),
                              onSaved: (text) => controller.signingName.text = text,
                            ),
                            /*TableRowInput(
                              readOnly: false,
                              controller: controller.signingName,
                              color: Color(0xFFE6E6E8),
                              inputType: TextInputType.number,
                              onChanged: (val) => controller.countSmogServiceFee(),
                            ),*/
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
