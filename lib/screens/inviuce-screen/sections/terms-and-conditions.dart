import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.screenWidth;
    var block = SizeConfig.block;
    return Container(
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('SMOG CHECK TERMS & CONDITIONS'),
                Container(height: 2, width: width / 3, color: Colors.black),
                SizedBox(height: block),
                Text('''THIS SMOG TEST- ONLY STATION CANNOT PERFORM ANY DIAGNOSTIC,
                  ADJUSTMENT, OR REPAIRS. I hereby authorize the above smog test to be
                  performed. SMog test fee is due whether above vehicle passes or fails the smog test.
                  You and your employees may operate the above vehicle for purpose of testing,
                  inspection, and delivery at my risk. An express mechanic’s lien is acknowledged on
                  above vehicle to secure the amount of this invoice. You will not held responsible for loss
                  or damage to vehicle due fire, theft, accident, dynamometer testing or other cause
                  beyond your control'''),
              ],
            ),
          ),
          SizedBox(width: block * 2.5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'AUTO REGISTRATION TERM & CONDITIONS',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: block * 2.5),
                ),
                Container(height: 2, width: width / 3, color: Colors.black),
                SizedBox(height: block),
                Text('''Thank you for choosing COLONIAL GARAGE SMOG & AUTO REGISTRATION. We appreciate
your business as a valued customer. COLONIAL GARAGE SMOG & AUTO REGISTRATION is
licensed by the State of California, Department of Motor Vehicles, to perform, vehicle
registration, and titling services. Please note: COLONIAL GARAGE SMOG & AUTO
REGISTRATION is not owned and operated by any government agency. We are not the,
Department of Motor Vehicles, (DMV). Your document will be submitted to the DMV within 1 to
5 business days, at which point you will be issued either your tags or temporary permit, until you
bring the rest of the documents you may need.'''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
