import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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

  TextEditingController smogTestController = TextEditingController();
  TextEditingController pretestController = TextEditingController();
  TextEditingController smogCertificateController = TextEditingController();
  TextEditingController retestController = TextEditingController();
  TextEditingController totalSmogServiceFeeController = TextEditingController();

  TextEditingController registrationFeeController = TextEditingController();
  TextEditingController taxesController = TextEditingController();
  TextEditingController epfController = TextEditingController();
  TextEditingController citationsController = TextEditingController();
  TextEditingController totalDmvFeesController = TextEditingController();

  TextEditingController registrationServiceFeeController = TextEditingController();
  TextEditingController vinVerificationController = TextEditingController();
  TextEditingController dayPermitController = TextEditingController();
  TextEditingController creditDebitController = TextEditingController();
  TextEditingController totalRegistrationFeeController = TextEditingController();

  bool loader = false;

  disposeController() {
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

    smogTestController.clear();
    pretestController.clear();
    smogCertificateController.clear();
    retestController.clear();
    totalSmogServiceFeeController.clear();

    registrationFeeController.clear();
    taxesController.clear();
    epfController.clear();
    citationsController.clear();
    totalDmvFeesController.clear();

    registrationServiceFeeController.clear();
    vinVerificationController.clear();
    dayPermitController.clear();
    creditDebitController.clear();
    totalRegistrationFeeController.clear();

    loader = false;
  }
}
