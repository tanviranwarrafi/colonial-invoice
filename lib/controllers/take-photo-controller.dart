import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TakePhotoController with ChangeNotifier {
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
    final imageFile = await imagePicker.getImage(source: ImageSource.camera);
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
