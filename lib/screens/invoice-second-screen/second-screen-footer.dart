import 'package:colonial_invoice/utils/images.dart';
import 'package:colonial_invoice/utils/size-config.dart';
import 'package:flutter/material.dart';

class SecondScreenFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var block = SizeConfig.block;
    return Container(
      padding: EdgeInsets.only(right: block * 7, left: block * 7, top: block, bottom: block),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Count on us for', style: TextStyle(fontSize: block * 4, fontWeight: FontWeight.bold)),
          SizedBox(height: block),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'FAST',
                style:
                    TextStyle(color: Colors.red, fontSize: block * 4, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              Text(
                ',',
                style:
                    TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              Text(
                'FAIR',
                style:
                    TextStyle(color: Colors.red, fontSize: block * 4, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              Text(
                ' ' + 'and' + ' ',
                style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.bold),
              ),
              Text(
                'FRIENDLY' + ' ',
                style:
                    TextStyle(color: Colors.red, fontSize: block * 4, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              Text(
                'service!',
                style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: block * 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Image.asset(Images.colonialInvoice, width: block * 20, height: block * 20, fit: BoxFit.cover)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('+1 858-267-4510', style: TextStyle(fontSize: block * 3.2, fontWeight: FontWeight.w600)),
                    SizedBox(height: block / 2),
                    Text('smog@colonialgarage.net', style: TextStyle(fontSize: block * 2.8, fontWeight: FontWeight.w600)),
                    SizedBox(height: block / 2),
                    Text('www.colonialgarage.net', style: TextStyle(fontSize: block * 2.8, fontWeight: FontWeight.w600)),
                    SizedBox(height: block / 2),
                    Text('7618 Herschel Avenue,', style: TextStyle(fontSize: block * 2.8)),
                    SizedBox(height: block / 2),
                    Text('La Jolla, CA 92037', style: TextStyle(fontSize: block * 2.8)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
