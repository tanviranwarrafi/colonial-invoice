import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController driverLicController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController paidAmountController = TextEditingController();
  TextEditingController balanceController = TextEditingController();

  TextEditingController vinController = TextEditingController();
  TextEditingController cashController = TextEditingController();
  TextEditingController cardController = TextEditingController();
  TextEditingController licencePlateController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController expirationController = TextEditingController();
  TextEditingController odometerController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController makeController = TextEditingController();
  TextEditingController modelController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    nameController.clear();
    dateController.clear();
    driverLicController.clear();
    phoneController.clear();
    addressController.clear();
    emailController.clear();
    paidAmountController.clear();
    balanceController.clear();

    vinController.clear();
    cashController.clear();
    cardController.clear();
    licencePlateController.clear();
    stateController.clear();
    expirationController.clear();
    odometerController.clear();
    yearController.clear();
    makeController.clear();
    modelController.clear();
    super.onClose();
  }
}
