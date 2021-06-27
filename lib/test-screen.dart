import 'package:colonial_invoice/controllers/take-photo-controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
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
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            value.selectedImage == null
                ? SizedBox.shrink()
                : Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
                    child: Image.asset(value.selectedImage.path, fit: BoxFit.cover),
                  ),
            RaisedButton(
              onPressed: () => controller.pickImageFromCamera(context: context),
              child: Text('Image'),
            ),
            RaisedButton(
              onPressed: () => controller.sendImageOnTap(context: context),
              child: Text('Text'),
            ),
          ],
        ),
      ),
    );
  }
}
