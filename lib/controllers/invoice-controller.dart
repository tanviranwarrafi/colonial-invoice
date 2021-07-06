import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:typed_data';

import 'package:colonial_invoice/common/api-urls.dart';
import 'package:colonial_invoice/screens/invoice-second-screen/invoice-second-screen.dart';
import 'package:colonial_invoice/screens/view-invoice-screen/view-invoice-screen.dart';
import 'package:colonial_invoice/services/api-service.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:hand_signature/signature.dart';
import 'package:http/http.dart' as http;
import 'package:simple_moment/simple_moment.dart';

class InvoiceController with ChangeNotifier {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ApiService apiService = ApiService();
  TextEditingController nameController = TextEditingController();
  TextEditingController driverLicController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController vinController = TextEditingController();
  TextEditingController licencePlateController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController expirationController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController makeController = TextEditingController();
  TextEditingController modelController = TextEditingController();

  TextEditingController smogTestController = TextEditingController(text: '');
  TextEditingController smogCertificateController = TextEditingController(text: '');
  TextEditingController retestController = TextEditingController(text: '');
  TextEditingController totalSmogServiceFeeController = TextEditingController(text: '');

  TextEditingController registrationFeeController = TextEditingController(text: '');
  TextEditingController taxesController = TextEditingController(text: '');
  TextEditingController epfController = TextEditingController(text: '');
  TextEditingController totalDmvFeesController = TextEditingController(text: '');

  TextEditingController registrationServiceFeeController = TextEditingController(text: '');
  TextEditingController vinVerificationController = TextEditingController(text: '');
  TextEditingController dayPermitController = TextEditingController(text: '');
  TextEditingController totalRegistrationFeeController = TextEditingController(text: '');

  TextEditingController creditDebitController = TextEditingController();
  TextEditingController grandTotalController = TextEditingController();

  bool isEdit = true;
  String signingDate = 'null';
  ValueNotifier<ByteData> rawImage = ValueNotifier<ByteData>(null);

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
    driverLicController.clear();
    phoneController.clear();
    addressController.clear();
    emailController.clear();

    vinController.clear();
    licencePlateController.clear();
    stateController.clear();
    expirationController.clear();
    yearController.clear();
    makeController.clear();
    modelController.clear();

    smogTestController.clear();
    smogCertificateController.clear();
    retestController.clear();
    totalSmogServiceFeeController.clear();

    registrationFeeController.clear();
    taxesController.clear();
    epfController.clear();
    totalDmvFeesController.clear();

    registrationServiceFeeController.clear();
    vinVerificationController.clear();
    dayPermitController.clear();
    totalRegistrationFeeController.clear();

    creditDebitController.clear();
    grandTotalController.clear();

    isEdit = true;
    signingDate = 'null';
    rawImage.value = null;
    control.clear();

    estimatedValue.clear();
    bankName.clear();
    bankAddress.clear();
    isRegistrationCard = 'No';
    lastEnterDate = 'null';
    buyCarDate = 'null';
    isFinanced = 'Financed';

    loader = false;
  }

  countSmogServiceFee() {
    double smogTest = double.parse(smogTestController.text == '' ? '0' : smogTestController.text);
    double smogCertificate = double.parse(smogCertificateController.text == '' ? '0' : smogCertificateController.text);
    double retest = double.parse(retestController.text == '' ? '0' : retestController.text);
    totalSmogServiceFeeController.text = (smogTest + smogCertificate + retest).toString();
    notifyListeners();
    countTotalFee();
  }

  countDmvFees() {
    double registrationFee = double.parse(registrationFeeController.text == '' ? '0' : registrationFeeController.text);
    double taxes = double.parse(taxesController.text == '' ? '0' : taxesController.text);
    double epf = double.parse(epfController.text == '' ? '0' : epfController.text);
    totalDmvFeesController.text = (registrationFee + taxes + epf).toString();
    notifyListeners();
    countTotalFee();
  }

  countRegistrationFees() {
    double registrationService =
        double.parse(registrationServiceFeeController.text == '' ? '0' : registrationServiceFeeController.text);
    double vinVerification = double.parse(vinVerificationController.text == '' ? '0' : vinVerificationController.text);
    double dayPermit = double.parse(dayPermitController.text == '' ? '0' : dayPermitController.text);
    totalRegistrationFeeController.text = (registrationService + vinVerification + dayPermit).toString();
    notifyListeners();
    countTotalFee();
  }

  countTotalFee() {
    double totalSmogFee = double.parse(totalSmogServiceFeeController.text == '' ? '0' : totalSmogServiceFeeController.text);
    double totalDmvFee = double.parse(totalDmvFeesController.text == '' ? '0' : totalDmvFeesController.text);
    double totalRegistrationFee =
        double.parse(totalRegistrationFeeController.text == '' ? '0' : totalRegistrationFeeController.text);

    double grandTotal = totalSmogFee + totalDmvFee + totalRegistrationFee;
    double creditValue = (2.75 / 100) * grandTotal;
    creditDebitController.text = creditValue.toString();
    grandTotalController.text = (grandTotal + creditValue).toString();
    notifyListeners();
  }

  HandSignatureControl control = new HandSignatureControl(
    threshold: 0.01,
    smoothRatio: 0.65,
    velocityRange: 2.0,
  );

  editSignOnTap() {
    isEdit = true;
    notifyListeners();
  }

  clearSignOnTap() {
    control.clear();
    rawImage.value = null;
    notifyListeners();
  }

  exportSignOnTap({BuildContext context}) async {
    if (control.isFilled) {
      rawImage.value = await control.toImage(color: Colors.black);
      isEdit = false;
      notifyListeners();
    } else {
      snackbar(context: context, message: 'Please sign here first');
    }
  }

  validateCustomerInfo(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (nameController.text.length > 0) {
      if (driverLicController.text.length > 0) {
        if (phoneController.text.length > 0) {
          if (addressController.text.length > 0) {
            if (emailController.text.length > 0 && EmailValidator.validate(emailController.text)) {
              validateVehicleInfo(context);
              /*if (paidAmountController.text.length > 0) {
                  if (balanceController.text.length > 0) {
                  } else {
                    snackbar(context: context, message: 'Please write customer balance');
                  }
                } else {
                  snackbar(context: context, message: 'Please write customer\'s paid amount');
                }*/
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
      snackbar(context: context, message: 'Please write your name');
    }
  }

  validateVehicleInfo(BuildContext context) {
    if (vinController.text.length > 0) {
      if (licencePlateController.text.length > 0) {
        if (stateController.text.length > 0) {
          if (expirationController.text.length > 0) {
            if (yearController.text.length > 0) {
              if (makeController.text.length > 0) {
                if (modelController.text.length > 0) {
                  validateSigningInfo(context: context);
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
            snackbar(context: context, message: 'Please write expiration');
          }
        } else {
          snackbar(context: context, message: 'Please write state name');
        }
      } else {
        snackbar(context: context, message: 'Please write licence plate no');
      }
    } else {
      snackbar(context: context, message: 'Please write vehicle vin no');
    }
  }

  validateSigningInfo({BuildContext context}) async {
    if (control.isFilled) {
      rawImage.value = await control.toImage(color: Colors.black);
      isEdit = false;
      notifyListeners();
      if (rawImage.value != null) {
        if (signingDate != 'null') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => InvoiceSecondScreen()));
        } else {
          snackbar(context: context, message: 'Please select signing date');
        }
      } else {
        snackbar(context: context, message: 'Please sign the form below');
      }
    } else {
      snackbar(context: context, message: 'Please sign here first');
    }
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

  haveRegistrationCard({String value}) {
    isRegistrationCard = value;
    notifyListeners();
  }

  selectSigningDate({BuildContext context}) {
    FocusScope.of(context).unfocus();
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      currentTime: DateTime.now(),
      onConfirm: (date) {
        if (date != null) {
          signingDate = Moment.fromDate(date).format('dd-MM-yyyy');
          notifyListeners();
        } else {
          snackbar(context: context, message: 'Date not selected');
        }
      },
    );
  }

  selectBuyCarDate({BuildContext context}) {
    FocusScope.of(context).unfocus();
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
    FocusScope.of(context).unfocus();
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

  submitInvoiceOnTap({BuildContext context}) async {
    //http://invoiceapplication.colonialgarage.net/public/download-invoice/1
    loader = true;
    notifyListeners();
    var signingImage = convert.base64Encode(rawImage.value.buffer.asUint8List());
    Map body = {
      "customer_name": nameController.text.length > 0 ? nameController.text : '',
      "driver_lic": driverLicController.text,
      "phone_no": phoneController.text,
      "address": addressController.text,
      "email": emailController.text,
      "vin": vinController.text,
      "lisence_plate": licencePlateController.text,
      "state": stateController.text,
      "expiration": expirationController.text,
      "year": yearController.text,
      "make": makeController.text,
      "model": modelController.text,
      "smog_test": smogTestController.text.length > 0 ? smogTestController.text : '0',
      "smog_certificate": smogCertificateController.text.length > 0 ? smogCertificateController.text : '0',
      "retest": retestController.text.length > 0 ? retestController.text : '0',
      "registration_fee": registrationFeeController.text.length > 0 ? registrationFeeController.text : '0',
      "taxes": taxesController.text.length > 0 ? taxesController.text : '0',
      "epf": epfController.text.length > 0 ? epfController.text : 0,
      "registration_service_fee": registrationServiceFeeController.text.length > 0 ? registrationServiceFeeController.text : 0,
      "vin_verification": vinVerificationController.text.length > 0 ? vinVerificationController.text : 0,
      "day_permit": dayPermitController.text.length > 0 ? dayPermitController.text : 0,
      "credit_debit": creditDebitController.text.length > 0 ? creditDebitController.text : 0,
      "registration_card": isRegistrationCard == 'Yes' ? true : false,
      "last_enter_date": lastEnterDate,
      "estimated_value_of_card": estimatedValue.text,
      "buy_card_date": buyCarDate,
      "vehicle_financed": isFinanced,
      "bank_name": bankName.text,
      "bank_address": bankAddress.text,
      "customer_signature": 'data:image/png;base64, ' + signingImage,
      "date_service": signingDate
    };
    print(body);
    final response = await http.post(
      Uri.parse(ApiUrl.server + ApiUrl.invoice),
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
      print(response.body);
      snackbar(context: context, message: 'Invoice sent to ${nameController.text}');
      Navigator.of(context).pop();
      Navigator.of(context).pop();
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
