import 'dart:convert';

import 'package:colonial_invoice/common/api-urls.dart';
import 'package:colonial_invoice/screens/invoice-second-screen/invoice-second-screen.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/view-invoice-screen.dart';
import 'package:colonial_invoice/services/api-service.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:simple_moment/simple_moment.dart';

class InvoiceController with ChangeNotifier {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ApiService apiService = ApiService();
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

  // TextEditingController pretestController = TextEditingController();
  TextEditingController smogCertificateController = TextEditingController();
  TextEditingController retestController = TextEditingController();
  TextEditingController totalSmogServiceFeeController = TextEditingController();

  TextEditingController registrationFeeController = TextEditingController();
  TextEditingController taxesController = TextEditingController();
  TextEditingController epfController = TextEditingController();

  // TextEditingController citationsController = TextEditingController();
  TextEditingController totalDmvFeesController = TextEditingController();

  TextEditingController registrationServiceFeeController = TextEditingController();
  TextEditingController vinVerificationController = TextEditingController();
  TextEditingController dayPermitController = TextEditingController();
  TextEditingController totalRegistrationFeeController = TextEditingController();

  TextEditingController creditDebitController = TextEditingController();
  TextEditingController grandTotalController = TextEditingController();

  TextEditingController estimatedValue = TextEditingController();
  TextEditingController bankName = TextEditingController();
  TextEditingController bankAddress = TextEditingController();
  String isRegistrationCard = 'No';
  String lastEnterDate = 'null';
  String buyCarDate = 'null';
  String isFinanced = 'Financed';

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
    // pretestController.clear();
    smogCertificateController.clear();
    retestController.clear();
    totalSmogServiceFeeController.clear();

    registrationFeeController.clear();
    taxesController.clear();
    epfController.clear();
    // citationsController.clear();
    totalDmvFeesController.clear();

    registrationServiceFeeController.clear();
    vinVerificationController.clear();
    dayPermitController.clear();
    totalRegistrationFeeController.clear();

    creditDebitController.clear();
    grandTotalController.clear();

    loader = false;
  }

  validateCustomerInfo(BuildContext context) {
    if (nameController.text.length > 0) {
      if (dateController.text.length > 0) {
        if (driverLicController.text.length > 0) {
          if (phoneController.text.length > 0) {
            if (addressController.text.length > 0) {
              if (emailController.text.length > 0 && EmailValidator.validate(emailController.text)) {
                if (paidAmountController.text.length > 0) {
                  if (balanceController.text.length > 0) {
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
    if (vinController.text.length > 0) {
      if (cashController.text.length > 0) {
        if (cardController.text.length > 0) {
          if (licencePlateController.text.length > 0) {
            if (stateController.text.length > 0) {
              if (expirationController.text.length > 0) {
                if (odometerController.text.length > 0) {
                  if (yearController.text.length > 0) {
                    if (makeController.text.length > 0) {
                      if (modelController.text.length > 0) {
//                        validateSmogTestInfo(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InvoiceSecondScreen()));
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
      /*if (pretestController.text.length < 1) {

      } else {
        snackbar(context: context, message: 'Please enter pretest amount');
      }*/
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
      snackbar(context: context, message: 'Please enter smog test amount');
    }
  }

  validateDmvFeesInfo(BuildContext context) {
    if (registrationFeeController.text.length < 1) {
      if (taxesController.text.length < 1) {
        if (epfController.text.length < 1) {
          /*if (citationsController.text.length < 1) {

          } else {
            snackbar(context: context, message: 'Please enter citations amount');
          }*/
          validateRegistrationFeeInfo(context);
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

  haveRegistrationCard({String value}) {
    isRegistrationCard = value;
    notifyListeners();
  }

  selectLastEnterDate({BuildContext context}) {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      currentTime: DateTime.now(),
      onConfirm: (date) {
        if (date != null) {
          lastEnterDate = Moment.fromDate(date).format('dd-MM-yyyy');
          notifyListeners();
        } else {
          snackbar(context: context, message: 'Date not selected');
        }
      },
    );
  }

  selectBuyCarDate({BuildContext context}) {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      currentTime: DateTime.now(),
      onConfirm: (date) {
        if (date != null) {
          buyCarDate = Moment.fromDate(date).format('dd-MM-yyyy');
          notifyListeners();
        } else {
          snackbar(context: context, message: 'Date not selected');
        }
      },
    );
  }

  selectFinancedVehicle({String value}) {
    isFinanced = value;
    notifyListeners();
  }

  viewInvoiceOnTap({BuildContext context}) {
    // validateCustomerInfo(context);
    if (estimatedValue.text.length > 0) {
      if (bankName.text.length > 0) {
        if (bankAddress.text.length > 0) {
          if (lastEnterDate != 'null') {
            if (buyCarDate != 'null') {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ViewInvoiceScreen()));
            } else {
              snackbar(context: context, message: 'Please select buy car date');
            }
          } else {
            snackbar(context: context, message: 'Please select last enter date');
          }
        } else {
          snackbar(context: context, message: 'Please write bank address');
        }
      } else {
        snackbar(context: context, message: 'Please write bank name');
      }
    } else {
      snackbar(context: context, message: 'Please write estimated value');
    }
  }

  submitInvoiceOnTap({BuildContext context}) {
    loader = true;
    notifyListeners();
    Map body = {
      "customer_name": nameController.text,
      "date": dateController.text,
      "driver_lic": driverLicController.text,
      "phone_no": phoneController.text,
      "address": addressController.text,
      "email": emailController.text,
      "amount_paid": paidAmountController.text,
      "balance": balanceController.text,
      "vin": vinController.text,
      "cash": cashController.text,
      "card": cardController.text,
      "lisence_plate": licencePlateController.text,
      "state": stateController.text,
      "expiration": expirationController.text,
      "odometer": odometerController.text,
      "year": yearController.text,
      "make": makeController.text,
      "model": modelController.text,
      "smog_test": smogTestController.text,
      "pre_test": 'Not Found',
      "smog_certificate": smogCertificateController.text,
      "retest": retestController.text,
      "registration_fee": registrationFeeController.text,
      "taxes": taxesController.text,
      "epf": epfController.text,
      "citations": 'Not Found',
      "registration_service_fee": registrationServiceFeeController.text,
      "vin_verification": vinVerificationController.text,
      "day_permit": dayPermitController.text,
      "credit_debit": creditDebitController.text,
      "registration_card": isRegistrationCard,
      "last_enter_date": lastEnterDate,
      "estimated_value_of_card": estimatedValue.text,
      "buy_card_date": buyCarDate,
      "vehicle_financed": isFinanced,
      "bank_name": bankName.text,
      "bank_address": bankAddress.text
    };
    String jsonBody = json.encode(body);
    apiService.postRequest(endPoint: ApiUrl.invoice, body: jsonBody).then((value) {
      print(value.body);
      if (value != null) {
        print(value.body);
        snackbar(context: context, message: 'Invoice sent to ${nameController.text}');
        Navigator.of(context).pop();
        Navigator.of(context).pop();
        Navigator.of(context).pop();
      } else {
        snackbar(context: context, message: 'Oops!! Invoice not sent. Please try again');
      }
    });
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
