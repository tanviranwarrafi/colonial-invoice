import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:colonial_invoice/common/api-urls.dart';
import 'package:colonial_invoice/services/api-service.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class TakePhotoController with ChangeNotifier {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ApiService apiService = ApiService();
  ImagePicker imagePicker = ImagePicker();
  TextEditingController email = TextEditingController();
  File selectedImage;
  bool loader = false;

  disposeController() {
    selectedImage = null;
    loader = false;
  }

  pickImageFromCamera({BuildContext context}) async {
    final imageFile = await imagePicker.getImage(source: ImageSource.camera, maxHeight: 720, maxWidth: 600);
    if (imageFile != null) {
      selectedImage = File(imageFile.path);
      log(selectedImage.path);
      notifyListeners();
    } else {
      snackbar(context: context, message: 'Image Not Picked');
    }
  }

  sendImageOnTap({BuildContext context}) async {
    if (selectedImage != null) {
      if (email.text.length > 0 && EmailValidator.validate(email.text)) {
        sendEmail(context: context);
      } else {
        snackbar(context: context, message: 'Please write email address');
      }
    } else {
      snackbar(context: context, message: 'Please capture invoice');
    }
  }

  sendEmail({BuildContext context}) async {
    loader = true;
    notifyListeners();
    Map body = {
      "email": email.text,
      "image": 'data:image/png;base64,' + base64Encode(selectedImage.readAsBytesSync()),
    };
    print(body);
    final response = await http.post(
      Uri.parse(ApiUrl.server + ApiUrl.photoInvoice),
      headers: <String, String>{
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(body),
    );
    print(response.body);
    if (response != null) {
      loader = false;
      notifyListeners();
      snackbar(context: context, message: 'Invoice sent to ${email.text}');
      Navigator.of(context).pop();
    } else {
      loader = false;
      notifyListeners();
      snackbar(context: context, message: 'Oops!! Invoice not sent. Please try again');
    }
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
