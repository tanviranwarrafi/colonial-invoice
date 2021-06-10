import 'package:email_validator/email_validator.dart';

class Validators {
  String validateName({String value}) {
    if (value.isEmpty) {
      return 'Please write your name';
    }
    return null;
  }

  String validateDate({String value}) {
    if (value.isEmpty) {
      return 'Please write your invoice date';
    }
    return null;
  }

  String validateDriverLic({String value}) {
    if (value.isEmpty) {
      return 'Please write your driver lic';
    }
    return null;
  }

  String validatePhone({String value}) {
    if (value.isEmpty) {
      return 'Please write customer contact no';
    }
    return null;
  }

  String validateAddress({String value}) {
    if (value.isEmpty) {
      return 'Please write customer address';
    }
    return null;
  }

  String validateEmail({String value}) {
    if (value.length == 0)
      return "Please enter your email";
    else if (!EmailValidator.validate(value))
      return "Please enter valid email";
    else
      return null;
  }

  String validatePaidAmount({String value}) {
    if (value.isEmpty) {
      return 'Please write customer\'s paid amount';
    }
    return null;
  }

  String validateBalance({String value}) {
    if (value.isEmpty) {
      return 'Please write customer balance';
    }
    return null;
  }

  String validateVin({String value}) {
    if (value.isEmpty) {
      return 'Please write vehicle vin no';
    }
    return null;
  }

  String validateCash({String value}) {
    if (value.isEmpty) {
      return 'Please write cash amount';
    }
    return null;
  }

  String validateCard({String value}) {
    if (value.isEmpty) {
      return 'Please write card no';
    }
    return null;
  }

  String validateLicencePlate({String value}) {
    if (value.isEmpty) {
      return 'Please write licence plate no';
    }
    return null;
  }

  String validateState({String value}) {
    if (value.isEmpty) {
      return 'Please write state name';
    }
    return null;
  }

  String validateExpiration({String value}) {
    if (value.isEmpty) {
      return 'Please write expiration';
    }
    return null;
  }

  String validateOdometer({String value}) {
    if (value.isEmpty) {
      return 'Please write odometer no';
    }
    return null;
  }

  String validateYear({String value}) {
    if (value.isEmpty) {
      return 'Please write date of year';
    }
    return null;
  }

  String validateMake({String value}) {
    if (value.isEmpty) {
      return 'Please write making materials';
    }
    return null;
  }

  String validateModel({String value}) {
    if (value.isEmpty) {
      return 'Please write vehicle model number';
    }
    return null;
  }
}
