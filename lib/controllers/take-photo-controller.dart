import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:colonial_invoice/common/api-urls.dart';
import 'package:colonial_invoice/services/api-service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class TakePhotoController with ChangeNotifier {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ApiService apiService = ApiService();
  ImagePicker imagePicker = ImagePicker();
  File selectedImage;
  bool loader = false;

  /*Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }*/

  pickImageFromCamera({BuildContext context}) async {
    final imageFile = await imagePicker.getImage(source: ImageSource.camera, maxHeight: 720, maxWidth: 600);
    if (imageFile != null) {
      selectedImage = File(imageFile.path);
      log(selectedImage.path);
      // Navigator.pop(context);
      // selectedImages.add(TaskImage(imageFile: File(imageFile.path), imagePath: imageFile.path));
      notifyListeners();
    } else {
      snackbar(context: context, message: 'Image Not Picked');
      // Navigator.pop(context);
      // Get.rawSnackbar(message: 'Image Not Picked');
    }
  }

  sendImageOnTap({BuildContext context}) async {
    Map body = {
      "email": 'tanviranwarrafi@gmail.com',
      "image": 'data:image/png;base64,' + base64Encode(selectedImage.readAsBytesSync()),
    };
    String jsonBody = json.encode(body);
    print(jsonBody);
    final response = await http.post(
      Uri.parse(ApiUrl.server + ApiUrl.photoInvoice),
      headers: <String, String>{
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(body),
    );
    print(response.body);
    /*apiService.postRequest(endPoint: ApiUrl.photoInvoice, body: jsonBody).then((response) {
      print(response.body);
      if (response != null) {
        loader = false;
        notifyListeners();
        print(response.body);
        snackbar(context: context, message: 'Invoice sent to ');
        Navigator.of(context).pop();
      } else {
        loader = false;
        notifyListeners();
        snackbar(context: context, message: 'Oops!! Invoice not sent. Please try again');
      }
    });*/
  }

  disposeController() {
    selectedImage = null;
    loader = false;
  }

  void snackbar({BuildContext context, String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 2.0,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.zero,
        content: Text(message, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
