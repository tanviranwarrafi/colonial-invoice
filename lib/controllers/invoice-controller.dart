import 'package:colonial_invoice/screens/view-invoice-screen/view-invoice.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvoiceController with ChangeNotifier {
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
  String selectedDate;
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

  validateCustomerInfo(BuildContext context) {
    if (nameController.text.length < 1) {
      if (dateController.text.length < 1) {
        if (driverLicController.text.length < 1) {
          if (phoneController.text.length < 1) {
            if (addressController.text.length < 1) {
              if (emailController.text.length < 1 || !EmailValidator.validate(emailController.text)) {
                if (paidAmountController.text.length < 1) {
                  if (balanceController.text.length < 1) {
                    validateVehicleInfo(context);
                  } else {
                    snackbar(context: context, message: 'Please write customer balance');
                  }
                } else {
                  snackbar(context: context, message: 'Please write customer\'s paid amount');
                }
              } else {
                snackbar(context: context, message: 'Please enter valid email');
              }
            } else {
              snackbar(context: context, message: 'Please write customer address');
            }
          } else {
            snackbar(context: context, message: 'Please write customer contact no');
          }
        } else {
          snackbar(context: context, message: 'Please write your driver lic');
        }
      } else {
        snackbar(context: context, message: 'Please write your invoice date');
      }
    } else {
      snackbar(context: context, message: 'Please write your name');
    }
  }

  validateVehicleInfo(BuildContext context) {
    if (vinController.text.length < 1) {
      if (cashController.text.length < 1) {
        if (cardController.text.length < 1) {
          if (licencePlateController.text.length < 1) {
            if (stateController.text.length < 1) {
              if (expirationController.text.length < 1) {
                if (odometerController.text.length < 1) {
                  if (yearController.text.length < 1) {
                    if (makeController.text.length < 1) {
                      if (modelController.text.length < 1) {
                        validateSmogTestInfo(context);
                      } else {
                        snackbar(context: context, message: 'Please write vehicle model number');
                      }
                    } else {
                      snackbar(context: context, message: 'Please write making materials');
                    }
                  } else {
                    snackbar(context: context, message: 'Please write date of year');
                  }
                } else {
                  snackbar(context: context, message: 'Please write odometer no');
                }
              } else {
                snackbar(context: context, message: 'Please write expiration');
              }
            } else {
              snackbar(context: context, message: 'Please write state name');
            }
          } else {
            snackbar(context: context, message: 'Please write licence plate no');
          }
        } else {
          snackbar(context: context, message: 'Please write card no');
        }
      } else {
        snackbar(context: context, message: 'Please write cash amount');
      }
    } else {
      snackbar(context: context, message: 'Please write vehicle vin no');
    }
  }

  validateSmogTestInfo(BuildContext context) {
    if (smogTestController.text.length < 1) {
      if (pretestController.text.length < 1) {
        if (smogCertificateController.text.length < 1) {
          if (retestController.text.length < 1) {
            validateDmvFeesInfo(context);
          } else {
            snackbar(context: context, message: 'Please enter retest amount');
          }
        } else {
          snackbar(context: context, message: 'Please enter smog certificate amount');
        }
      } else {
        snackbar(context: context, message: 'Please enter pretest amount');
      }
    } else {
      snackbar(context: context, message: 'Please enter smog test amount');
    }
  }

  validateDmvFeesInfo(BuildContext context) {
    if (registrationFeeController.text.length < 1) {
      if (taxesController.text.length < 1) {
        if (epfController.text.length < 1) {
          if (citationsController.text.length < 1) {
            validateRegistrationFeeInfo(context);
          } else {
            snackbar(context: context, message: 'Please enter citations amount');
          }
        } else {
          snackbar(context: context, message: 'Please enter e.p.f amount');
        }
      } else {
        snackbar(context: context, message: 'Please enter tax amount');
      }
    } else {
      snackbar(context: context, message: 'Please enter registration fee');
    }
  }

  validateRegistrationFeeInfo(BuildContext context) {
    if (registrationServiceFeeController.text.length < 1) {
      if (vinVerificationController.text.length < 1) {
        if (dayPermitController.text.length < 1) {
          if (creditDebitController.text.length < 1) {
            viewInvoiceOnTap(context: context);
          } else {
            snackbar(context: context, message: 'Please enter credit%2.5 Debit%1 amount');
          }
        } else {
          snackbar(context: context, message: 'Please enter day permit amount');
        }
      } else {
        snackbar(context: context, message: 'Please enter vin certification amount');
      }
    } else {
      snackbar(context: context, message: 'Please enter registration service fee');
    }
  }

  viewInvoiceOnTap({BuildContext context}) {
    // validateCustomerInfo(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewInvoiceScreen()));
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
